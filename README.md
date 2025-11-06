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
| ![Home](https://via.placeholder.com/200x400?text=Home+Screen) | ![Search](https://via.placeholder.com/200x400?text=Search+Results) | ![Detail](https://via.placeholder.com/200x400?text=Weather+Detail) | ![Favorites](https://via.placeholder.com/200x400?text=Favorites) |

---

## 🎬 Live Demo
**GIF Demo:**  
| Home Animation | Forecast Animation | GPS & Favorites Animation |
|----------------|------------------|--------------------------|
| ![Home GIF](https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif) | ![Forecast GIF](https://media.giphy.com/media/l0HlBO7eyXzSZkJri/giphy.gif) | ![Favorites GIF](https://media.giphy.com/media/xT9IgG50Fb7Mi0prBC/giphy.gif) |

**Video Demo:**  
[Watch Live Demo Video](https://user-images.githubusercontent.com/00000000/weatherly-demo.mp4)

---

## 🎵 Lottie Animations
- ☀️ Sunny  
- 🌧️ Rainy  
- 🌫️ Cloudy  
- 📍 GPS Pulse  

> Lottie files are located in `assets/animations/` and customizable.

---

## 🏁 Installation

### Prerequisites
- Flutter (Latest Stable Version)  
- Dart SDK  
---

##🪪 License
MIT License — see LICENSE file.
---
##💜 Author
###Tisha — CSE (Cyber Security & Digital Forensics)
###"Forecasts made clear."

##📧 LinkedIn | 🌐 Portfolio
