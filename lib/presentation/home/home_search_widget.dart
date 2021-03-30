import 'package:flutter/material.dart';
import 'package:simple_weather/logic/cubit/weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSearchWidget extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Builder(
          builder: (context) => TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Digite uma cidade...',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: () =>
                    context.read<WeatherCubit>().reloadWeather(controller.text),
              ),
            ),
            onSubmitted: (cityId) =>
                context.read<WeatherCubit>().reloadWeather(cityId),
          ),
        ),
      ],
    );
  }
}
