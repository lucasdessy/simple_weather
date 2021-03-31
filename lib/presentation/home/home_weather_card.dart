import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_weather/data/models/forecast.dart';
import 'package:simple_weather/presentation/home/home_chart.dart';
import 'package:simple_weather/util/make_chart.dart';

class HomeWeatherCard extends StatelessWidget {
  final Forecast forecast;

  const HomeWeatherCard({Key? key, required this.forecast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(color: Colors.blue, width: 2),
        gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueAccent.withOpacity(0.2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 1.0]),
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${forecast.cityName}',
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${forecast.day}',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${forecast.date}',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _TemperatureCards(
              forecast: forecast,
            ),
          ),
        ],
      ),
    );
  }
}

class _TemperatureCards extends StatefulWidget {
  final Forecast forecast;

  const _TemperatureCards({Key? key, required this.forecast}) : super(key: key);

  @override
  __TemperatureCardsState createState() => __TemperatureCardsState();
}

class __TemperatureCardsState extends State<_TemperatureCards> {
  int currentValue = 0;
  List<double?> chartList = [1, 1, 1];
  @override
  void initState() {
    swapCharts(0);
    super.initState();
  }

  void swapCharts(int value) {
    print('///SWAP CHARTS');
    List<String?>? _newChart;
    switch (value) {
      case 0:
        _newChart = widget.forecast.temperatures;
        break;
      case 1:
        _newChart = widget.forecast.humidity;
        break;
      case 2:
        _newChart = widget.forecast.windspeeds;
        break;
      case 3:
        _newChart = widget.forecast.precips;
        break;
      case 4:
        _newChart = widget.forecast.rainprob;
        break;
      case 5:
        _newChart = widget.forecast.cloudiness;
        break;
    }
    print(_newChart);
    final _newDoubleChart = _newChart?.map((e) {
          final parsedString = e?.replaceAll(RegExp(r'[^\d]'), '');
          return double.tryParse(parsedString ?? '');
        }).toList() ??
        chartList;
    print(_newDoubleChart);
    setState(() {
      chartList = _newDoubleChart;
      currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: HomeChart(
          data: MakeChart.makeChart(chartList),
        )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _temperatureCard(Icon(Icons.thermostat_outlined), 0),
              _temperatureCard(Icon(Icons.water_damage_outlined), 1),
              _temperatureCard(Icon(Icons.line_style), 2),
              _temperatureCard(Icon(Icons.umbrella), 3),
              _temperatureCard(Icon(Icons.ramen_dining), 4),
              _temperatureCard(Icon(Icons.wb_cloudy), 5),
            ],
          ),
        ),
      ],
    );
  }

  Widget _temperatureCard(Icon icon, int value) => Builder(
        builder: (context) => GestureDetector(
          onTap: () => swapCharts(value),
          child: AnimatedOpacity(
            opacity: value == currentValue ? 0.6 : 1,
            duration: const Duration(milliseconds: 350),
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.purple,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: 50,
              height: 50,
              child: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: icon,
              ),
            ),
          ),
        ),
      );
}
