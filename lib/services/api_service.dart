import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  static Future getWeatherDataByCity(String city) async {
    return await http.get(
        Uri.parse(
            "https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=$city"),
        headers: {
          HttpHeaders.authorizationHeader:
          'apikey 21DN0yBJONResqWSCTyi0j:5NEnTW33frZstXfB3DHH3e',
          HttpHeaders.contentTypeHeader: 'application/json'
        });
  }
}