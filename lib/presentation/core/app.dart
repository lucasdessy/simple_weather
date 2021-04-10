import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/weather/list/list_bloc.dart';
import 'package:simple_weather/application/weather/weather_bloc.dart';
import 'package:simple_weather/injection.dart';
import 'package:simple_weather/presentation/router/app_router.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<WeatherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ListBloc>(),
        )
      ],
      child: MaterialApp(
        routes: AppRouter.router,
      ),
    );
  }
}
