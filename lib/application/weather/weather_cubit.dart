import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
import 'package:simple_weather/util/log.dart';

part 'weather_state.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  final IWeatherFacade weatherFacade;
  WeatherCubit(this.weatherFacade) : super(WeatherInitialState());

  Future<void> reloadWeather(String cityId, String cityName) async {
    try {
      emit(WeatherLoadingState());
      final _weather = await weatherFacade.getForecast(cityId, cityName);
      emit(WeatherLoadedState(_weather));
    } catch (e) {
      log(e);
      emit(WeatherErrorState());
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      return WeatherLoadedState.fromMap(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoadedState) {
      return state.toMap();
    }
    return null;
  }
}
