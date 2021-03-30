part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherErrorState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final Weather weather;

  WeatherLoadedState(this.weather);
}
