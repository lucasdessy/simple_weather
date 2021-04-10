part of 'list_bloc.dart';

@freezed
class ListState with _$ListState {
  const factory ListState({
    required List<ItemSuggestion> suggestions,
  }) = _ListState;

  factory ListState.initial() => const ListState(suggestions: []);
}
