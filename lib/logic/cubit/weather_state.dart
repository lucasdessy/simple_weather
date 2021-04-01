part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherErrorState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final Forecast forecast;

  WeatherLoadedState(this.forecast);

  Map<String, dynamic> toMap() {
    return {
      'forecast': forecast.toJson(),
    };
  }

  factory WeatherLoadedState.fromMap(Map<String, dynamic> map) {
    return WeatherLoadedState(
      Forecast.fromJson(map['forecast']),
    );
  }
}
