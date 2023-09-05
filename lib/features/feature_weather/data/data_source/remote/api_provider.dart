import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();
  var apiKey = Constants.apiKey1;

  ///current weather api call
  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await _dio.get(
        "${Constants.baseUrl}/data/2.5/weather", queryParameters: {
      'appid': apiKey,
      'units': 'metric',
      'q': cityName,
    });
    print(response.data);
    return response;
  }
}
