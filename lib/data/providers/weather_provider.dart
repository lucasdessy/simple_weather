import 'package:cloud_functions/cloud_functions.dart';

abstract class WeatherProvider {
  Future<Map<String, dynamic>> getWeather(String cityId, String cityName);
}

class WeatherFirebaseProvider implements WeatherProvider {
  final FirebaseFunctions _functions;
  late final HttpsCallable _getWeather;
  WeatherFirebaseProvider({FirebaseFunctions? functions})
      : _functions = functions ?? FirebaseFunctions.instance {
    _getWeather = _functions.httpsCallable('getWeather');
  }
  @override
  Future<Map<String, dynamic>> getWeather(
      String cityId, String cityName) async {
    try {
      print('getting weather...');
      final response = await _getWeather({'cityId': cityId});
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      print('erro ao processar. $e');
      throw Exception();
    }
  }
}

// class WeatherMockProvider implements WeatherProvider {
//   @override
//   Future<Forecast> getWeather(String cityId, String cityName) async {
//     await Future.delayed(Duration(seconds: 2));

//     return Forecast(cityName: cityName);
//   }
// }
