class ForecastItem {
  final DateTime dateTime;
  final double temp;
  final double tempMin;
  final double tempMax;
  final String icon;
  final String main;

  ForecastItem({
    required this.dateTime,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.main,
  });

  factory ForecastItem.fromJson(Map<String, dynamic> json) {
    return ForecastItem(
      dateTime: DateTime.fromMillisecondsSinceEpoch((json['dt'] as int) * 1000),
      temp: (json['main']?['temp'] ?? 0).toDouble(),
      tempMin: (json['main']?['temp_min'] ?? 0).toDouble(),
      tempMax: (json['main']?['temp_max'] ?? 0).toDouble(),
      icon: json['weather']?[0]?['icon'] ?? '01d',
      main: json['weather']?[0]?['main'] ?? '',
    );
  }
}

Map<String, List<ForecastItem>> groupForecastByDate(List<ForecastItem> items) {
  final map = <String, List<ForecastItem>>{};
  for (var item in items) {
    final key = '\${item.dateTime.year}-\${item.dateTime.month}-\${item.dateTime.day}';
    map.putIfAbsent(key, () => []).add(item);
  }
  return map;
}
