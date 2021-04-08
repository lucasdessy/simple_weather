import 'package:flutter/widgets.dart';
import 'package:simple_weather/presentation/add_city/add_city_page.dart';
import 'package:simple_weather/presentation/home/home_page.dart';
import 'routes.dart';

class AppRouter {
  static final router = <String, WidgetBuilder>{
    Routes.home: (ctx) => HomePage(),
    Routes.addCity: (ctx) => AddCityPage(),
  };

  AppRouter();
}
