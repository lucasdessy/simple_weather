// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Day _$DayFromJson(Map<String, dynamic> json) {
  return Day(
    day: json['day'] as String?,
    dayShort: json['dayShort'] as String?,
    date: json['date'] as String?,
    tempMin: json['tempMin'] as String?,
    tempMax: json['tempMax'] as String?,
    data: json['data'] == null
        ? null
        : DayData.fromJson(json['data'] as Map<String, dynamic>),
    temperatures: (json['temperatures'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    winddirs:
        (json['winddirs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    windspeed:
        (json['windspeed'] as List<dynamic>?)?.map((e) => e as String).toList(),
    precips:
        (json['precips'] as List<dynamic>?)?.map((e) => e as String).toList(),
    precipprob: (json['precipprob'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'day': instance.day,
      'dayShort': instance.dayShort,
      'date': instance.date,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'data': instance.data,
      'temperatures': instance.temperatures,
      'winddirs': instance.winddirs,
      'windspeed': instance.windspeed,
      'precips': instance.precips,
      'precipprob': instance.precipprob,
    };
