import 'package:html_character_entities/html_character_entities.dart';

import 'day_data.dart';

class Day {
  String? day;
  String? dayShort;
  String? date;
  String? tempMin;
  String? tempMax;
  DayData? data;
  List<String>? temperatures;
  List<String>? winddirs;
  List<String>? windspeed;
  List<String>? precips;
  List<String>? precipprob;

  Day(
      {this.day,
      this.dayShort,
      this.date,
      this.tempMin,
      this.tempMax,
      this.data,
      this.temperatures,
      this.winddirs,
      this.windspeed,
      this.precips,
      this.precipprob});

  Day.fromJson(Map<String, dynamic> json) {
    day = HtmlCharacterEntities.decode(json['day'].toString());
    dayShort = HtmlCharacterEntities.decode(json['day_short'].toString());
    date = HtmlCharacterEntities.decode(json['date'].toString());
    tempMin = HtmlCharacterEntities.decode(json['temp_min'].toString());
    tempMax = HtmlCharacterEntities.decode(json['temp_max'].toString());
    data = json['data'] != null
        ? DayData.fromJson(json['data'] as Map<String, dynamic>)
        : null;
    temperatures = (json['temperatures'] as List)
        .map((e) => HtmlCharacterEntities.decode(e.toString()))
        .toList();
    winddirs = (json['winddirs'] as List)
        .map((e) => HtmlCharacterEntities.decode(e.toString()))
        .toList();
    windspeed = (json['windspeed'] as List)
        .map((e) => HtmlCharacterEntities.decode(e.toString()))
        .toList();
    precips = (json['precips'] as List)
        .map((e) => HtmlCharacterEntities.decode(e.toString()))
        .toList();
    precipprob = (json['precipprob'] as List)
        .map((e) => HtmlCharacterEntities.decode(e.toString()))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['day'] = day;
    data['day_short'] = dayShort;
    data['date'] = date;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['temperatures'] = temperatures;
    data['winddirs'] = winddirs;
    data['windspeed'] = windspeed;
    data['precips'] = precips;
    data['precipprob'] = precipprob;
    return data;
  }
}
