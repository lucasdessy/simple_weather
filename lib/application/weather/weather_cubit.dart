import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
part 'weather_cubit.freezed.dart';
part 'weather_state.dart';
part 'weather_cubit.g.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  final IWeatherFacade weatherFacade;
  WeatherCubit(this.weatherFacade) : super(const WeatherState.initial());

  Future<void> reloadWeather(String cityId, String cityName) async {
    emit(const WeatherState.loading());
    final _weather = await weatherFacade.getForecast(cityId, cityName);
    _weather.fold((l) => emit(const WeatherState.error()),
        (r) => emit(WeatherState.loaded(r)));
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final state = WeatherState.fromJson(json);
      if (state is WeatherLoadedState) {
        return state;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoadedState) {
      return state.toJson();
    }
    return null;
  }
}
