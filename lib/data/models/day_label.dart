class DayLabel {
  String? short;
  String? long;

  DayLabel({this.short, this.long});

  DayLabel.fromJson(Map<String, dynamic> json) {
    short = json['short'];
    long = json['long'];
  }

  @override
  String toString() => 'DayLabel(short: $short, long: $long)';
}
