import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:crypto_currency_app/data/data.dart';
import 'package:crypto_currency_app/constants/constants.dart';

class CryptoCurrencyRepository {
  String latestCryptoCurrencyStatistics = 'https://pro-api.coinmarketcap.com/v1/global-metrics/quotes/latest?CMC_PRO_API_KEY=${AppApis.apiKey}';
}