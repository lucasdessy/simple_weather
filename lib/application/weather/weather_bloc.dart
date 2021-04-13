import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_weather/application/weather/list/list_bloc.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
import 'package:simple_weather/domain/weather/search/item_suggestion.dart';
part 'weather_state.dart';
part 'weather_event.dart';

part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherFacade weatherFacade;
  final ListBloc _listBloc;
  WeatherBloc(this.weatherFacade, this._listBloc)
      : super(const WeatherState.initial());

  Stream<WeatherState> _reloadWeather(ItemSuggestion suggestion) async* {
    yield const WeatherState.loading();
    final _weather = await weatherFacade.getForecast(suggestion);
    yield _weather.fold<WeatherState>(
      (l) => const WeatherState.error(),
      (r) {
        _listBloc.add(ListEvent.cityAdded(r.suggestion));
        return WeatherState.loaded(r);
      },
    );
  }

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    yield* event.map<Stream<WeatherState>>(loadCity: (s) async* {
      yield* _reloadWeather(s.suggestion);
    });
  }
}
