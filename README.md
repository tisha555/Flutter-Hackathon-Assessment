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

## 📱 Recommended Screens
| Home / Dashboard | Search Results | Weather Detail | Favorites |
|-----------------|----------------|----------------|-----------|
| ![Home](data:image/jpeg;base64,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) | ![Search](https://via.placeholder.com/200x400?text=Search+Results) | ![Detail](https://via.placeholder.com/200x400?text=Weather+Detail) | ![Favorites](https://via.placeholder.com/200x400?text=Favorites) |

---

## 🎬 Live Demo
**GIF Demo:**  
| Home Animation | Forecast Animation | GPS & Favorites Animation |
|----------------|------------------|--------------------------|
| ![Home GIF](https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif) | ![Forecast GIF](https://media.giphy.com/media/l0HlBO7eyXzSZkJri/giphy.gif) | ![Favorites GIF](https://media.giphy.com/media/xT9IgG50Fb7Mi0prBC/giphy.gif) |

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


