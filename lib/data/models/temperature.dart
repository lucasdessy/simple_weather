class Temperature {
  String? tempMax;
  String? tempMin;

  Temperature({this.tempMax, this.tempMin});

  Temperature.fromJson(Map<String, dynamic> json) {
    tempMax = json['temp_max'];
    tempMin = json['temp_min'];
  }

  @override
  String toString() => 'Temperature(tempMax: $tempMax, tempMin: $tempMin)';
}
