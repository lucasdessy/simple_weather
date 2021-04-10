import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_weather/domain/weather/search/item_suggestion.dart';

part 'list_event.dart';
part 'list_state.dart';
part 'list_bloc.freezed.dart';

@injectable
class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListState.initial());

  @override
  Stream<ListState> mapEventToState(
    ListEvent event,
  ) async* {
    yield* event.map<Stream<ListState>>(cityAdded: mapCityAddedToState);
  }

  Stream<ListState> mapCityAddedToState(_CityAdded event) async* {
    final _suggestions = List<ItemSuggestion>.from(state.suggestions);
    if (!_suggestions.contains(event.itemSuggestion)) {
      _suggestions.add(event.itemSuggestion);
    }

    yield state.copyWith(suggestions: _suggestions);
  }
}
