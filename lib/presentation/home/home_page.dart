import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/data/models/forecast.dart';
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
        child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) {
            if (state is WeatherErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Não foi possível carregar dados.'),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is WeatherLoadingState) {
              return _buildLoading();
            } else if (state is WeatherLoadedState) {
              return _buildWeather(state.forecast);
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

  Widget _buildWeather(Forecast forecast) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeWeatherCard(
              forecast: forecast,
            ),
            HomeSearchWidget(
              initialText: forecast.cityName,
            ),
          ],
        ),
      );
}
