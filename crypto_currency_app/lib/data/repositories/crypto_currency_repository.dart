import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:crypto_currency_app/data/data.dart';
import 'package:crypto_currency_app/constants/constants.dart';

class CryptoCurrencyRepository {
  static String latestCryptoCurrencyStatistics =
      'https://pro-api.coinmarketcap.com/v1/global-metrics/quotes/latest?CMC_PRO_API_KEY=${AppApis.apiKey}';

  static Future<QuotesLatestResponse> latestQuotes() async {
    final response = await http.get(Uri.parse(latestCryptoCurrencyStatistics));
    final responseBody = json.decode(response.body);

    if (response.statusCode == 401 || response.statusCode == 404) {
      throw Exception(
          'latest quotes data load failed. please try again later.');
    }

    return QuotesLatestResponse.fromJson(responseBody);
  }
}
