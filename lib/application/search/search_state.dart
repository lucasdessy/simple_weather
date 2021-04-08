part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required bool showErrorMessages,
      required bool loading,
      required List<ItemSuggestion> results}) = _SearchState;

  factory SearchState.initial() => const SearchState(
      showErrorMessages: false, loading: false, results: <ItemSuggestion>[]);
}
