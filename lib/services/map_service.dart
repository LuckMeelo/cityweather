import 'package:url_launcher/url_launcher.dart';

class MapService {
  Future<void> openMap(double lat, double lon) async {
    final googleMapsUrl = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lon');
    
    try {
      if (!await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication)) {
        // Fallback to geo scheme if https fails (e.g. no browser or map app handling https)
        final geoUrl = Uri.parse('geo:$lat,$lon');
        if (!await launchUrl(geoUrl)) {
           throw Exception('Could not launch map');
        }
      }
    } catch (e) {
      // If launchUrl throws, try geo scheme as last resort
      try {
         final geoUrl = Uri.parse('geo:$lat,$lon');
         await launchUrl(geoUrl);
      } catch (_) {
         throw Exception('Could not launch map: $e');
      }
    }
  }
}
