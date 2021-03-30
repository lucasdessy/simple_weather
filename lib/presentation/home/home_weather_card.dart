import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_weather/data/models/temperature.dart';
import 'package:simple_weather/data/models/weather.dart';

class HomeWeatherCard extends StatelessWidget {
  final Weather weather;

  const HomeWeatherCard({Key? key, required this.weather}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
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
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    weather.date,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    weather.day,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _TemperatureCards(
              temperatures: weather.temperatures,
            ),
          ),
        ],
      ),
    );
  }
}

class _TemperatureCards extends StatelessWidget {
  final List<Temperature> temperatures;

  const _TemperatureCards({Key? key, required this.temperatures})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: temperatures.map((temp) => _temperatureCard(temp)).toList(),
      ),
    );
  }

  Widget _temperatureCard(Temperature temp) => Builder(
        builder: (context) => Container(
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.blueAccent.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: 50,
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              Text(
                temp.temperatue,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      );
}
