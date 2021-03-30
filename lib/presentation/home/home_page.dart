import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/data/models/weather.dart';
import 'package:simple_weather/logic/cubit/weather_cubit.dart';
import 'package:simple_weather/presentation/home/home_weather_card.dart';

import 'home_search_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleWeather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitialState) {
              return HomeSearchWidget();
            } else if (state is WeatherLoadingState) {
              return _buildLoading();
            } else if (state is WeatherErrorState) {
              return _buildError();
            } else if (state is WeatherLoadedState) {
              return _buildWeather(state.weather);
            }
            return HomeSearchWidget();
          },
        ),
      ),
    );
  }

  Widget _buildLoading() => Center(
        child: CircularProgressIndicator(),
      );

  Widget _buildError() => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (context) => Text(
              'Ocorreu um erro ao carregar tempo.',
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.red),
            ),
          ),
          HomeSearchWidget(),
        ],
      );

  Widget _buildWeather(Weather weather) => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeWeatherCard(
            weather: weather,
          ),
          HomeSearchWidget(),
        ],
      );
}
