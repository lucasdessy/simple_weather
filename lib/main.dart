import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simple_weather/data/providers/weather_provider.dart';
import 'package:simple_weather/data/repositories/weather_repository.dart';
import 'app.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  final weatherProvider = WeatherFirebaseProvider();
  runApp(
    App(
      weatherRepository: WeatherRepository(provider: weatherProvider),
    ),
  );
}
