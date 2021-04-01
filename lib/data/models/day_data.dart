import 'package:html_character_entities/html_character_entities.dart';

class DayData {
  String? wind;
  String? humidity;
  String? precip;

  DayData({this.wind, this.humidity, this.precip});

  DayData.fromJson(Map<String, dynamic> json) {
    wind = HtmlCharacterEntities.decode(json['wind']);
    humidity = HtmlCharacterEntities.decode(json['humidity']);
    precip = HtmlCharacterEntities.decode(json['precip']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['wind'] = wind;
    data['humidity'] = humidity;
    data['precip'] = precip;
    return data;
  }
}
