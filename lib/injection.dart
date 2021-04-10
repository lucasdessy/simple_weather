import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_weather/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
