import 'package:flutter/material.dart';
import 'package:simple_weather/data/providers/weather_provider.dart';
import 'package:simple_weather/data/repositories/weather_repository.dart';
import 'app.dart';

void main() {
  final weatherProvider = WeatherMockProvider();
  runApp(
    App(
      weatherRepository: WeatherRepository(provider: weatherProvider),
    ),
  );
}
