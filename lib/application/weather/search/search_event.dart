part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.cityNameChanged({required String cityName}) =
      _CityNameChanged;
  const factory SearchEvent.cityTapped(
      {required String cityName, required String cityId}) = _CityTapped;
}
