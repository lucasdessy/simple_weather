part of 'weather_bloc.dart';

@freezed
@immutable
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitialState;
  const factory WeatherState.loading() = WeatherLoadingState;
  const factory WeatherState.error() = WeatherErrorState;
  const factory WeatherState.loaded(
    Forecast forecast,
  ) = WeatherLoadedState;
}
