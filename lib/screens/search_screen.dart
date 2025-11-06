import 'package:flutter/material.dart';
import '../services/weather_api_service.dart';

class SearchScreen extends StatefulWidget {
  final String units;
  SearchScreen({this.units = 'metric'});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  bool _loading = false;
  final _api = WeatherApiService();
  String? _error;

  Future<void> _submit(String city) async {
    if (city.trim().isEmpty) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await _api.fetchCurrentWeather(city, units: widget.units);
      Navigator.pop(context, city);
    } catch (e) {
      setState(() => _error = 'City not found or error fetching data');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search City')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: _controller,
            textInputAction: TextInputAction.search,
            onSubmitted: _submit,
            decoration: InputDecoration(
              hintText: 'Enter city name',
              suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: () => _submit(_controller.text)),
            ),
          ),
          SizedBox(height: 12),
          if (_loading) CircularProgressIndicator(),
          if (_error != null) Padding(padding: EdgeInsets.only(top: 12), child: Text(_error!, style: TextStyle(color: Colors.red))),
        ]),
      ),
    );
  }
}
