# 🌦️ Weatherly — Your Smart Weather Companion

![Flutter](https://img.shields.io/badge/Flutter-3.13.0-blue?logo=flutter)
![License](https://img.shields.io/badge/License-MIT-green)
![Platform](https://img.shields.io/badge/Platform-Android-lightgrey)

**Weatherly** is a fully functional Flutter mobile application that lets users search for cities, view current weather conditions, check 5-day forecasts, and manage their favorite locations.  
It integrates with the OpenWeatherMap API to fetch real-time weather data and offers a smooth, modern, and responsive UI experience.

---

## 🌍 Overview
Weatherly provides an intuitive interface to track weather anywhere. Users can:  
- Search cities with real-time suggestions  
- View current weather with detailed metrics  
- Check 5-day forecasts with icons and min/max temperatures  
- Save favorite cities for quick access  
- Detect current location and show local weather  
- View hourly forecasts, animations, and unit conversions  

---

## ✨ Core Features
| Feature | Description |
|---------|-------------|
| 🔍 **City Search** | Search cities with suggestions, handle invalid names, and show loading indicators |
| 🌤 **Current Weather Display** | Temperature, humidity, weather condition, icons, city/country, feels-like, and wind speed |
| 📅 **5-Day Forecast** | Scrollable list or grid view showing min/max temperatures, icons, and date/day names |
| 🎨 **Clean & Responsive UI** | Modern design with proper spacing, smooth transitions, and matching color schemes |
| ❤️ **Favorites** | Save, view, and remove cities using `shared_preferences` |

---

## 🌟 Bonus Features (Optional)
| Feature | Description |
|---------|-------------|
| 📍 **Current Location Weather (GPS)** | Automatically detect user's location, handle permissions, and provide fallback if denied |
| 🕐 **Hourly Forecast** | Display hourly forecast for next 12–24 hours with temperature and icons |
| 🎵 **Weather Animations** | Animated weather icons using Lottie, background effects, loading animations, and smooth transitions |
| 🔄 **Unit Conversion** | Toggle between Celsius/Fahrenheit and km/h/mph, with local preferences stored |

---

## 🛠️ Tech Stack
| Technology | Purpose |
|------------|---------|
| Flutter | Frontend & UI development |
| Dart | Programming language |
| OpenWeatherMap API | Real-time weather data |
| `http` or `dio` | API calls |
| `shared_preferences` | Local storage for favorites |
| `geolocator` | GPS location detection |
| `intl` | Date/time formatting |
| (Optional) `geocoding` | Convert coordinates to location names |
| (Optional) `permission_handler` | Handle runtime permissions |
| (Optional) `cached_network_image` | Optimize image loading |
| (Optional) `lottie` | Animated weather icons |

---

## 🌐 API Configuration
- **Provider:** OpenWeatherMap  
- **Endpoint:** https://api.openweathermap.org/data/2.5/  
- **Free Tier Limits:** 1,000 calls/day, 60 calls/minute  
- **Required Calls:**  
  - Current Weather: `/weather?q={city_name}&appid={API_KEY}`  
  - 5-Day Forecast: `/forecast?q={city_name}&appid={API_KEY}`  
  - Current Location: `/weather?lat={lat}&lon={lon}&appid={API_KEY}`  

---

## 📱 Recommended Screens
1. **Home / Dashboard:** Search bar, current weather, quick access to favorites, location-based weather  
2. **Search Results:** List of cities with tap-to-view details  
3. **Weather Detail:** Current weather, 5-day forecast, hourly forecast (optional), add/remove favorites  
4. **Favorites:** List of saved cities with quick overview, swipe-to-delete  

---

## 🏁 Getting Started

### Prerequisites
- Flutter (Latest Stable Version)  
- Dart SDK  

### Installation Steps

# Clone the repository
git clone https://github.com/yourusername/weatherly.git
cd weatherly

# Install dependencies
flutter pub get

# Set your API key
# Open lib/utils/constants.dart and replace "YOUR_API_KEY_HERE"

# Run the app
flutter run

# Build APK (optional)
flutter build apk --release

📸 Screenshots & Demo
Replace these links with your actual screenshots or GIFs

Home Screen	Forecast View	Favorites
		

Live Demo GIFs:

Home Screen Animation:

Weather Forecast Animation:

GPS & Favorites Animation:

🎬 Lottie Animations
Weatherly uses smooth animated icons powered by Lottie:

☀️ Sunny

🌧️ Rainy

🌫️ Cloudy

📍 GPS Pulse

Lottie files are located in assets/animations/ and can be customized for weather effects.

🚀 Deployment
Build an optimized release for the Play Store:

flutter build apk --release
For signing and Play Store upload, see Flutter’s official guide.

🧠 Future Enhancements
🗺️ Map-based weather visualization

🌐 Multi-language support

🌡️ Advanced weather statistics

🌍 Offline weather data caching

🤝 Contributing
Contributions are welcome!
Fork the repo → create a new branch → make edits → submit a pull request:


Copy code
git checkout -b feature/new-feature

🪪 License
This project is licensed under the MIT License.
See the LICENSE file for details.

💜 Author
Tisha — CSE (Cyber Security & Digital Forensics)
"Forecasts made clear."

📧 Reach out on LinkedIn | 🌐 Portfolio
