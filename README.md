# CityWeather

Application Flutter permettant de rechercher la météo d'une ville ou d'utiliser la position GPS actuelle.

## Fonctionnalités

-   **Recherche de ville** : Utilise l'API Open-Meteo Geocoding pour trouver des villes.
-   **Météo** : Affiche la température et la vitesse du vent via Open-Meteo Forecast.
-   **GPS** : Récupère la position actuelle pour afficher la météo locale.
-   **Cartes** : Ouvre la localisation de la ville dans l'application de cartes par défaut (Google Maps / Plans).

## Installation

1.  Cloner le dépôt.
2.  Exécuter `flutter pub get` pour installer les dépendances.
3.  Lancer l'application avec `flutter run`.

## Architecture

Le projet suit l'architecture **MVVM** (Model-View-ViewModel) avec **Provider** pour la gestion d'état.

-   `models/` : Modèles de données (`City`, `Weather`).
-   `services/` : Services pour les appels API, la localisation et les cartes.
-   `viewmodels/` : Logique métier et gestion d'état.
-   `views/` : Interface utilisateur.

## Difficultés rencontrées

-   Gestion des permissions de localisation sur Android et iOS.
-   Intégration de l'API Open-Meteo et parsing des données JSON.

## Auteurs

-   [Votre Nom]
-   [Nom du binôme]
