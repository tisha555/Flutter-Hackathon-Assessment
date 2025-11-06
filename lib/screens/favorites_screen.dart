import 'package:flutter/material.dart';
import '../services/favorite_service.dart';
import 'weather_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  final String units;
  FavoritesScreen({this.units = 'metric'});

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final _fav = FavoriteService();
  List<String> _items = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final f = await _fav.getFavorites();
    setState(() => _items = f);
  }

  Future<void> _remove(String city) async {
    await _fav.removeFavorite(city);
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final city = _items[index];
          return Dismissible(
            key: Key(city),
            direction: DismissDirection.endToStart,
            onDismissed: (_) => _remove(city),
            background: Container(color: Colors.red, alignment: Alignment.centerRight, padding: EdgeInsets.symmetric(horizontal: 20), child: Icon(Icons.delete, color: Colors.white)),
            child: ListTile(
              title: Text(city),
              trailing: Icon(Icons.chevron_right),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => WeatherDetailScreen(city: city, units: widget.units))),
            ),
          );
        },
      ),
    );
  }
}
