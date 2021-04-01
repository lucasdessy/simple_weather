class DayData {
  String? wind;
  String? humidity;
  String? precip;

  DayData({this.wind, this.humidity, this.precip});

  DayData.fromJson(Map<String, dynamic> json) {
    wind = json['wind'];
    humidity = json['humidity'];
    precip = json['precip'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['wind'] = wind;
    data['humidity'] = humidity;
    data['precip'] = precip;
    return data;
  }
}
