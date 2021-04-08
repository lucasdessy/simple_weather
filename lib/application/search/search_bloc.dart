import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diacritic/diacritic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_weather/constants.dart';
import 'package:simple_weather/domain/search/item_suggestion.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map<Stream<SearchState>>(
        cityNameChanged: _mapCityNameChangedToState,
        cityTapped: _mapCityTappedToState);
  }

  Stream<SearchState> _mapCityNameChangedToState(
      _CityNameChanged event) async* {
    if (event.cityName.isEmpty) {
      yield state.copyWith(
        loading: false,
        results: [],
      );
    } else {
      yield state.copyWith(loading: true);
      await Future.delayed(const Duration(milliseconds: 150));

      yield state.copyWith(
        showErrorMessages: true,
        loading: false,
        results: _findCity(event.cityName),
      );
    }
  }

  Stream<SearchState> _mapCityTappedToState(_CityTapped event) async* {}

  List<ItemSuggestion> _findCity(String pattern) {
    final suggestionList = <ItemSuggestion>[];
    var keys = Constants.citiesMap.keys
        .where(
          (element) => removeDiacritics(element.toUpperCase()).contains(
            removeDiacritics(
              pattern.toUpperCase(),
            ),
          ),
        )
        .toList();
    if (keys.length > 10) {
      keys = keys.sublist(0, 10);
    }
    for (final key in keys) {
      suggestionList.add(ItemSuggestion(Constants.citiesMap[key] ?? '', key));
    }

    return suggestionList;
  }
}
