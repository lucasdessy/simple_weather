class Weather {
  String? wind;
  String? tabSun;
  String? precip;

  Weather({this.wind, this.tabSun, this.precip});

  Weather.fromJson(Map<String, dynamic> json) {
    wind = json['wind'];
    tabSun = json['tab_sun'];
    precip = json['precip'];
  }

  @override
  String toString() => 'Weather(wind: $wind, tabSun: $tabSun, precip: $precip)';
}
