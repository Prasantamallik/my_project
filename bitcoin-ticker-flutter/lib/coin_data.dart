import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';
const myApi = '55ECC652-B240-42FB-B09D-C4DD719426BC';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String myURL = '$coinApiURL/$crypto/$selectedCurrency?apikey=$myApi';
      http.Response response = await http.get(myURL);
      if (response.statusCode == 200) {
        var jsondecode = jsonDecode(response.body);
        double lastPrice = jsondecode['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
//      return lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'problem with the current request';
      }
    }
    return cryptoPrices;
  }
}
