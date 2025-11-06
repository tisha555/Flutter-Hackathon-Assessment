# Weatherly

Weatherly is a Flutter weather application that integrates with the OpenWeatherMap API to show current weather, hourly forecasts, 5-day forecasts, and allows users to save favorite cities. This repository is a complete, ready-to-upload project scaffold. Replace placeholders (notably the API key and any Lottie files) with real assets before building.

## Features
- City search with live validation and loading indicators
- Current weather: temperature, feels-like, humidity, wind speed, and icon
- 5-day forecast aggregated from 3-hourly data
- Hourly forecast (horizontal scroll)
- Save/remove favorite cities using `shared_preferences`
- Detect current location (geolocator) and retrieve weather by coordinates
- Unit toggle (Celsius/Fahrenheit) persisted locally
- Lottie animations placeholders for weather effects
- Instructions for building release APK/AAB (not included keystore)

## Quick start
1. Clone this repo.
2. Replace `lib/utils/constants.dart` with your OpenWeatherMap API key.
3. Add Lottie JSON files to `assets/lottie/` or replace placeholders.
4. Run `flutter pub get`.
5. Run the app:
   ```bash
   flutter run
   ```

## Build release
Follow the official Flutter docs to create a signed release build. Do **not** commit your keystore or passwords to GitHub.

See the `docs/` folder for additional notes, storyboard, and assets structure.

