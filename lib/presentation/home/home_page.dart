import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/weather/weather_cubit.dart';
import 'package:simple_weather/domain/weather/forecast.dart';

import 'package:simple_weather/presentation/home/home_weather_card.dart';

import 'home_search_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleWeather'),
      ),
      body: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state is WeatherErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
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
          return const HomeSearchWidget();
        },
      ),
    );
  }

  Widget _buildLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget _buildWeather(Forecast forecast) => SingleChildScrollView(
        child: Column(
          children: [
            Builder(
              builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 450,
                child: PageView.builder(
                  itemCount: forecast.days.length,
                  itemBuilder: (context, index) {
                    return HomeWeatherCard(
                      day: forecast.days[index],
                      cityName: forecast.cityName,
                    );
                  },
                ),
              ),
            ),
            HomeSearchWidget(
              initialText: forecast.cityName,
            ),
          ],
        ),
      );
}
