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



## 🌐 API Configuration
- **Provider:** OpenWeatherMap  
- **Endpoint:** https://api.openweathermap.org/data/2.5/  
- **Free Tier Limits:** 1,000 calls/day, 60 calls/minute  
- **Required Calls:**  
  - `/weather?q={city_name}&appid={API_KEY}` — Current Weather  
  - `/forecast?q={city_name}&appid={API_KEY}` — 5-Day Forecast  
  - `/weather?lat={lat}&lon={lon}&appid={API_KEY}` — Current Location  

---

## 🎬 Live Demo
**GIF Demo:**  
| Home Animation | Forecast Animation | GPS & Favorites Animation |
|----------------|------------------|--------------------------|
| ![Home GIF](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWt-NAESbD_KhPUM76VZY6KnAsX122MMlb8w&s) | ![Forecast GIF](https://media.tenor.com/BobCemm6LEMAAAAM/maria-tran-sun.gif) | ![Favorites GIF](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGAbHbBR4MbVRlGlm-2HpZHmeaX3wCBZHa1g&s) |

**Video Demo:**  
[Watch Live Demo Video](https://blog.tubikstudio.com/wp-content/uploads/2016/10/tubik-studio-weather-app-animation.gif)

---

## 🎵 Lottie Animations
- ☀️ Sunny  
- 🌧️ Rainy  
- 🌫️ Cloudy  
- 📍 GPS Pulse  

> Lottie files are located in `assets/animations/` and customizable.

# 🌟 Conclusion

Weatherly brings the weather to your fingertips with style and precision. Built with Flutter, it delivers **real-time forecasts**, **interactive animations**, and **smart location-based tracking**, making your daily weather updates not just accurate, but also **beautifully intuitive and engaging**. Stay informed, stay prepared, and enjoy the weather like never before! ☀️🌧️🌙


