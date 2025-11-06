import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../services/weather_api_service.dart';
import '../widgets/weather_card.dart';
import 'search_screen.dart';
import 'favorites_screen.dart';
import '../services/location_service.dart';
import '../services/unit_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Weather? _currentWeather;
  bool _loading = false;
  final _api = WeatherApiService();
  final _loc = LocationService();
  final _unitService = UnitService();
  String _units = 'metric';

  @override
  void initState() {
    super.initState();
    _loadUnits();
  }

  Future<void> _loadUnits() async {
    final u = await _unitService.getPreferredUnits();
    setState(() => _units = u);
  }

  Future<void> _searchCity() async {
    final city = await Navigator.push(context, MaterialPageRoute(builder: (_) => SearchScreen(units: _units)));
    if (city != null && city is String) {
      _fetchWeather(city);
    }
  }

  Future<void> _fetchWeather(String city) async {
    setState(() => _loading = true);
    try {
      final data = await _api.fetchCurrentWeather(city, units: _units);
      final weather = Weather.fromJson(data);
      setState(() {
        _currentWeather = weather;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: ' + e.toString())));
    } finally {
      setState(() => _loading = false);
    }
  }

  Future<void> _loadCurrentLocationWeather() async {
    setState(() => _loading = true);
    try {
      final pos = await _loc.getCurrentPosition();
      final data = await _api.fetchCurrentWeatherByCoords(pos.latitude, pos.longitude, units: _units);
      final weather = Weather.fromJson(data);
      setState(() => _currentWeather = weather);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Location error: ' + e.toString())));
    } finally {
      setState(() => _loading = false);
    }
  }

  void _openFavorites() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => FavoritesScreen(units: _units)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weatherly'),
        actions: [
          IconButton(onPressed: _openFavorites, icon: Icon(Icons.favorite)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(children: [
              Expanded(child: ElevatedButton.icon(onPressed: _searchCity, icon: Icon(Icons.search), label: Text('Search city'))),
              SizedBox(width: 8),
              ElevatedButton.icon(onPressed: _loadCurrentLocationWeather, icon: Icon(Icons.my_location), label: Text('Use location')),
            ]),
            SizedBox(height: 16),
            _loading
                ? Expanded(child: Center(child: CircularProgressIndicator()))
                : _currentWeather == null
                    ? Expanded(child: Center(child: Text('No city selected. Tap Search or Use location.')))
                    : Expanded(child: WeatherCard(weather: _currentWeather!, units: _units)),
          ],
        ),
      ),
    );
  }
}
