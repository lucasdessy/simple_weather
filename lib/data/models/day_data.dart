import 'package:html_character_entities/html_character_entities.dart';

class DayData {
  String? wind;
  String? humidity;
  String? precip;

  DayData({this.wind, this.humidity, this.precip});

  DayData.fromJson(Map<String, dynamic> json) {
    wind = HtmlCharacterEntities.decode(json['wind'].toString());
    humidity = HtmlCharacterEntities.decode(json['humidity'].toString());
    precip = HtmlCharacterEntities.decode(json['precip'].toString());
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['wind'] = wind;
    data['humidity'] = humidity;
    data['precip'] = precip;
    return data;
  }
}
