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

📸 Screenshots & GIFs

Replace these links with your actual images or GIFs.

Home Screen	Forecast View	Favorites

	
	

Live Demo GIFs:

Home Screen Animation


Weather Forecast Animation


GPS & Favorites Animation


✨ Features
Feature	Description	Icon
Real-time Weather	Get current weather updates for any location	🌦️
Forecast View	7-day weather forecast at a glance	📅
Favorites	Save your favorite locations for quick access	⭐
Animated Icons	Smooth Lottie animations for weather conditions	🎵
GPS Integration	Automatically detect your location	📍
Dark Mode	Switch between light and dark themes	🌙
Air Quality Index	Check AQI and pollution levels	🌪️
Notifications	Get alerts for severe weather conditions	🔔
🛠️ Tech Stack
Technology	Purpose	Icon
Flutter	Frontend & UI development	🎨
Dart	Programming language for Flutter	💻
Lottie	Animated weather icons	🎵
OpenWeatherMap API	Weather data provider	☁️
Android SDK	Build & deploy Android app	🤖
Git & GitHub	Version control	🐙
🏁 Getting Started

Follow these steps to set up the project locally:

Clone the repository:

git clone https://github.com/yourusername/weatherly.git
cd weatherly


Install Flutter dependencies:

flutter pub get


Set up your API key:

Open lib/utils/constants.dart

Replace "YOUR_API_KEY_HERE" with your OpenWeatherMap API key

Run the app:

flutter run


Build for release (optional):

flutter build apk --release

🚀 Deployment

Build an optimized release for the Play Store:

flutter build apk --release


For signing and Play Store upload, see Flutter’s official guide
.

🧠 Future Enhancements

🗺️ Map-based weather visualization

🌐 Multi-language support

🌡️ Advanced weather statistics

🌍 Offline weather data caching

🤝 Contributing

Contributions are welcome!

Fork the repo → create a new branch → make your edits → submit a pull request:

git checkout -b feature/new-feature

🪪 License

This project is licensed under the MIT License.
See the LICENSE file for more details.

💜 Author

Tisha — CSE (Cyber Security & Digital Forensics)
"Forecasts made clear."

📧 Reach out on LinkedIn
 | 🌐 Portfolio

