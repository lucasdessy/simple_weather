import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/weather/list/list_bloc.dart';
import 'package:simple_weather/application/weather/weather_bloc.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BlocBuilder<ListBloc, ListState>(
          builder: (context, state) {
            return Column(
              children: [
                const Text('SimpleWeather'),
                ...state.suggestions
                    .map<Widget>((e) => ListTile(
                          title: Text(e.name),
                          onTap: () {
                            context
                                .read<WeatherBloc>()
                                .add(WeatherEvent.loadCity(e));
                            Navigator.of(context).pop();
                          },
                        ))
                    .toList()
              ],
            );
          },
        ),
      ),
    );
  }
}
