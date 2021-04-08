import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/weather/weather_bloc.dart';
import 'package:simple_weather/domain/weather/i_weather_facade.dart';
import 'package:simple_weather/presentation/router/app_router.dart';

class App extends StatelessWidget {
  final IWeatherFacade weatherFacade;

  const App({Key? key, required this.weatherFacade}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WeatherBloc(weatherFacade)),
      ],
      child: MaterialApp(
        routes: AppRouter.router,
      ),
    );
  }
}
