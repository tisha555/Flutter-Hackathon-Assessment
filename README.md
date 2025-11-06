# 🌦️ Weatherly — Forecasts Made Clear  

![Weatherly Banner](https://user-images.githubusercontent.com/00000000/weatherly-banner.png)

> **Smart. Simple. Accurate.**  
> Get real-time weather updates, hourly forecasts, and future trends — all wrapped in a clean and intuitive Flutter experience.  

---

## 🌍 Overview

**Weatherly** is a Flutter-based mobile weather application that integrates with the [OpenWeatherMap API](https://openweathermap.org/api) to fetch real-time weather data.  
It offers a delightful UI, complete with **Lottie animations**, **location-based forecasts**, and **saved favorites**, helping users track weather anywhere effortlessly.  

---

## ✨ Features

| Feature | Description |
|----------|-------------|
| 🔍 **City Search** | Search cities with instant suggestions and error handling for invalid names. |
| 🌤 **Current Weather** | Shows temperature, humidity, feels-like, wind speed, and condition icons. |
| 📅 **5-Day Forecast** | Displays daily trends with min/max temperatures and date labels. |
| 🕐 **Hourly Forecast** | Visualize upcoming temperature changes in a horizontal view. |
| ❤️ **Favorites** | Save, view, or remove cities using local storage. |
| 📍 **GPS Location** | Auto-detects current location and fetches weather (permission-based). |
| 🔄 **Unit Conversion** | Toggle between Celsius ↔ Fahrenheit, km/h ↔ mph. |
| 🎨 **Modern UI** | Light/Violet theme with Lottie weather animations and smooth transitions. |

---

## 🧭 Tech Stack

- **Framework:** Flutter (latest stable)
- **Language:** Dart  
- **APIs:** [OpenWeatherMap](https://openweathermap.org/)  
- **Local Storage:** Shared Preferences  
- **Geolocation:** Geolocator + Geocoding  
- **Animations:** Lottie  

---

## ⚙️ Installation

```bash
# Clone this repository
git clone https://github.com/your-username/Weatherly.git

# Navigate to the project directory
cd Weatherly

# Install dependencies
flutter pub get

# Run the app
flutter run

🧩 Folder Structure
lib/
 ├── main.dart
 ├── screens/
 ├── services/
 ├── models/
 ├── widgets/
 ├── utils/
 └── helpers/
assets/
 ├── animations/
 ├── icons/
 └── images/


---

## 📸 Screenshots & GIFs
Replace these links with your actual images or GIFs.

| Home Screen | Forecast View | Favorites |
|-------------|---------------|-----------|
| ![Home](link-to-home-screenshot) | ![Forecast](link-to-forecast-screenshot) | ![Favorites](link-to-favorites-screenshot) |

**Live Demo GIFs:**  
- Home Screen Animation: ![Home GIF](link-to-home-gif)  
- Weather Forecast Animation: ![Forecast GIF](link-to-forecast-gif)  
- GPS & Favorites Animation: ![Favorites GIF](link-to-favorites-gif)  

---

## ✨ Features
| Feature | Description | Icon |
|---------|-------------|------|
| 🔍 City Search | Search cities with instant suggestions and error handling for invalid names | 🔍 |
| 🌤 Current Weather | Shows temperature, humidity, feels-like, wind speed, and condition icons | 🌤 |
| 📅 5-Day Forecast | Displays daily trends with min/max temperatures and date labels | 📅 |
| 🕐 Hourly Forecast | Visualize upcoming temperature changes in a horizontal view | 🕐 |
| ❤️ Favorites | Save, view, or remove cities using local storage | ❤️ |
| 📍 GPS Location | Auto-detects current location and fetches weather (permission-based) | 📍 |
| 🔄 Unit Conversion | Toggle between Celsius ↔ Fahrenheit, km/h ↔ mph | 🔄 |
| 🎨 Modern UI | Light/Violet theme with Lottie weather animations and smooth transitions | 🎨 |
| 🌪️ Air Quality Index | Check AQI and pollution levels | 🌪️ |
| 🔔 Notifications | Get alerts for severe weather conditions | 🔔 |

---

## 🛠️ Tech Stack
| Technology | Purpose | Icon |
|------------|---------|------|
| Flutter | Frontend & UI development | 🎨 |
| Dart | Programming language for Flutter | 💻 |
| Lottie | Animated weather icons | 🎵 |
| OpenWeatherMap API | Weather data provider | ☁️ |
| Shared Preferences | Local storage for favorites | 💾 |
| Geolocator + Geocoding | GPS & location services | 📍 |
| Android SDK | Build & deploy Android app | 🤖 |
| Git & GitHub | Version control | 🐙 |

---

## 🏁 Getting Started
Follow these steps to set up the project locally:

```bash
# Clone the repository
git clone https://github.com/yourusername/weatherly.git
cd weatherly

# Install Flutter dependencies
flutter pub get

# Set up your API key
# Open lib/utils/constants.dart
# Replace "YOUR_API_KEY_HERE" with your OpenWeatherMap API key

# Run the app
flutter run

# Build for release (optional)
flutter build apk --release
