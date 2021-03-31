import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_weather/data/models/forecast.dart';
import 'package:simple_weather/data/repositories/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository repository;
  WeatherCubit(this.repository) : super(WeatherInitialState());

  Future<void> reloadWeather(String cityId) async {
    try {
      emit(WeatherLoadingState());
      final _weather = await repository.getForecast(cityId);
      emit(WeatherLoadedState(_weather));
    } catch (e) {
      print(e);
      emit(WeatherErrorState());
    }
  }
}
