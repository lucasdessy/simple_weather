// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_functions/cloud_functions.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/search/search_bloc.dart' as _i6;
import 'application/weather/weather_bloc.dart' as _i7;
import 'domain/weather/i_weather_facade.dart' as _i4;
import 'infrastructure/core/firebase_injectable_module.dart' as _i8;
import 'infrastructure/weather/weather_facade.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.FirebaseFunctions>(
      () => firebaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i4.IWeatherFacade>(
      () => _i5.WeatherFacade(functions: get<_i3.FirebaseFunctions>()));
  gh.factory<_i6.SearchBloc>(() => _i6.SearchBloc());
  gh.factory<_i7.WeatherBloc>(() => _i7.WeatherBloc(get<_i4.IWeatherFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}
