part of 'list_bloc.dart';

@freezed
class ListEvent with _$ListEvent {
  const factory ListEvent.cityAdded(ItemSuggestion itemSuggestion) = _CityAdded;
}
