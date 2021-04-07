// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherInitialState _$_$WeatherInitialStateFromJson(
    Map<String, dynamic> json) {
  return _$WeatherInitialState();
}

Map<String, dynamic> _$_$WeatherInitialStateToJson(
        _$WeatherInitialState instance) =>
    <String, dynamic>{};

_$WeatherLoadingState _$_$WeatherLoadingStateFromJson(
    Map<String, dynamic> json) {
  return _$WeatherLoadingState();
}

Map<String, dynamic> _$_$WeatherLoadingStateToJson(
        _$WeatherLoadingState instance) =>
    <String, dynamic>{};

_$WeatherErrorState _$_$WeatherErrorStateFromJson(Map<String, dynamic> json) {
  return _$WeatherErrorState();
}

Map<String, dynamic> _$_$WeatherErrorStateToJson(
        _$WeatherErrorState instance) =>
    <String, dynamic>{};

_$WeatherLoadedState _$_$WeatherLoadedStateFromJson(Map<String, dynamic> json) {
  return _$WeatherLoadedState(
    Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$WeatherLoadedStateToJson(
        _$WeatherLoadedState instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
    };
