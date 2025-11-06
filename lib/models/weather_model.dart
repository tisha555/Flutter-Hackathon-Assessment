class Weather {
  final String city;
  final String country;
  final String main;
  final String description;
  final double temp;
  final double feelsLike;
  final int humidity;
  final double windSpeed;
  final String icon;

  Weather({
    required this.city,
    required this.country,
    required this.main,
    required this.description,
    required this.temp,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'] ?? '',
      country: json['sys']?['country'] ?? '',
      main: json['weather']?[0]?['main'] ?? '',
      description: json['weather']?[0]?['description'] ?? '',
      temp: (json['main']?['temp'] ?? 0).toDouble(),
      feelsLike: (json['main']?['feels_like'] ?? 0).toDouble(),
      humidity: (json['main']?['humidity'] ?? 0).toInt(),
      windSpeed: (json['wind']?['speed'] ?? 0).toDouble(),
      icon: json['weather']?[0]?['icon'] ?? '01d',
    );
  }
}
