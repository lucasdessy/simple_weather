import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_failure.freezed.dart';

@freezed
@immutable
class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.serverError() = ServerError;
}
