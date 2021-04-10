// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast(
    suggestion:
        ItemSuggestion.fromJson(json['suggestion'] as Map<String, dynamic>),
    days: (json['days'] as List<dynamic>)
        .map((e) => Day.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'suggestion': instance.suggestion,
      'days': instance.days,
    };
