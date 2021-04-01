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
    day = json['day'];
    dayShort = json['day_short'];
    date = json['date'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    data =
        json['data'] != null ? DayData.fromJson(Map.from(json['data'])) : null;
    temperatures = json['temperatures'].cast<String>();
    winddirs = json['winddirs'].cast<String>();
    windspeed = json['windspeed'].cast<String>();
    precips = json['precips'].cast<String>();
    precipprob = json['precipprob'].cast<String>();
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
