import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/weather/list/list_bloc.dart';
import 'package:simple_weather/application/weather/weather_bloc.dart';
import 'package:simple_weather/domain/weather/forecast.dart';
import 'package:simple_weather/presentation/drawer/app_drawer.dart';
import 'package:simple_weather/presentation/home/home_weather_card.dart';
import 'package:simple_weather/presentation/router/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('SimpleWeather'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => addNewCity(context),
          ),
        ],
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            loading: (_) {},
            error: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Não foi possível carregar dados.'),
                ),
              );
            },
            loaded: (s) {
              // TODO(lucas): make this code happen inside bloc (bloc-to-bloc-communication)
              context
                  .read<ListBloc>()
                  .add(ListEvent.cityAdded(s.forecast.suggestion));
            },
          );
        },
        builder: (context, state) {
          return state.map<Widget>(
            initial: (_) {
              return _buildNone();
            },
            loading: (_) {
              return _buildLoading();
            },
            error: (_) {
              return _buildNone();
            },
            loaded: (s) {
              return _buildForecast(s.forecast);
            },
          );
        },
      ),
    );
  }

  Widget _buildLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget _buildNone() => Center(
        child: Builder(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Não há nenhuma cidade selecionada.',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () => addNewCity(context),
                child: const Text('Adicionar cidade'),
              ),
            ],
          ),
        ),
      );

  void addNewCity(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.addCity);
  }

  Widget _buildForecast(Forecast forecast) {
    return PageView.builder(
      itemCount: forecast.days.length,
      itemBuilder: (context, index) {
        final day = forecast.days[index];
        return HomeWeatherCard(day: day, cityName: forecast.suggestion.name);
      },
    );
  }
}
