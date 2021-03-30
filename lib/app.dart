import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/data/repositories/weather_repository.dart';
import 'package:simple_weather/logic/cubit/weather_cubit.dart';

import 'presentation/router/app_router.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;

  const App({Key? key, required this.weatherRepository}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WeatherCubit(weatherRepository)),
      ],
      child: MaterialApp(
        routes: AppRouter.router,
      ),
    );
  }
}
