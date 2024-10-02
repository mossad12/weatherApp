import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/Api/ApiConstants.dart';
import 'package:weatherapp/Model/Weatherresponse.dart';
import 'package:weatherapp/Model/WeekWeather.dart';

class ApiManager {
  static Future<Weatherresponse> getWeatherData(String country) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.getWeather,
        {'q': country, 'appid': ApiConstants.appId});
    var response = await http.get(url);
    var data = response.body;
    var json = jsonDecode(data);
    var weatherResponse = Weatherresponse.fromJson(json);
    return weatherResponse;
  }
// static Future<WeekWeather> getWeatherWeek(String country) async{
//   Uri url =  Uri.https(ApiConstants.baseUrl, ApiConstants.getWeekWeather, {
//     'q': country,
//     'cnt': '7',
//     'appid': ApiConstants.appId
//   }
//   );
//   var response = await http.get(url);
//   var data = response.body;
//   var json = jsonDecode(data);
//   var weekWeatherResponse = WeekWeather.fromJson(json);
//   return weekWeatherResponse;
// }
}
