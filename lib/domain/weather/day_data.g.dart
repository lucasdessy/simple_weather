// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayData _$DayDataFromJson(Map<String, dynamic> json) {
  return DayData(
    wind: json['wind'] as String?,
    humidity: json['humidity'] as String?,
    precip: json['precip'] as String?,
  );
}

Map<String, dynamic> _$DayDataToJson(DayData instance) => <String, dynamic>{
      'wind': instance.wind,
      'humidity': instance.humidity,
      'precip': instance.precip,
    };
