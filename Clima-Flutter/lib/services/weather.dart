import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const myApi = 'eae33141580b8b7ad8055a0a221a9143';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    Networking networkHelper = Networking(
        '$openWeatherMapURL?q=$cityName,India&appid=$myApi&units=metric');
    var getData = await networkHelper.getData();
    return getData;
  }

  Future<dynamic> getweatherlocation() async {
    Location locObj = Location();
    await locObj.getCurrentLocation();

    Networking networkHelper = Networking(
        '$openWeatherMapURL?lat=${locObj.latitudeOfMap}&lon=${locObj.longitudeOfMap}&appid=$myApi&units=metric');
    var getData = await networkHelper.getData();

    return getData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
