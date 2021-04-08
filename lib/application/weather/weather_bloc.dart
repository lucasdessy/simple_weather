import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
part 'weather_state.dart';
part 'weather_event.dart';

part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherFacade weatherFacade;
  WeatherBloc(this.weatherFacade) : super(const WeatherState.initial());

  Future<WeatherState> _reloadWeather(String cityId, String cityName) async {
    emit(const WeatherState.loading());
    final _weather = await weatherFacade.getForecast(cityId, cityName);
    return _weather.fold<WeatherState>(
        (l) => const WeatherState.error(), (r) => _updateWeather(state, r));
  }

  WeatherState _updateWeather(WeatherState _state, Forecast forecast) {
    if (_state is WeatherLoadedState) {
      final forecasts = _state.forecasts;
      forecasts.addAll({forecast.cityName: forecast});
      return WeatherState.loaded(forecasts);
    }
    return WeatherState.loaded({forecast.cityName: forecast});
  }

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    yield* event.map<Stream<WeatherState>>(loadCity: (s) async* {
      yield await _reloadWeather(s.cityId, s.cityName);
    });
  }

  // @override
  // WeatherState? fromJson(Map<String, dynamic> json) {
  //   try {
  //     final state = WeatherState.fromJson(json);
  //     if (state is WeatherLoadedState) {
  //       return state;
  //     }
  //     return null;
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // @override
  // Map<String, dynamic>? toJson(WeatherState state) {
  //   if (state is WeatherLoadedState) {
  //     return state.toJson();
  //   }
  //   return null;
  // }
}
