import 'package:json_annotation/json_annotation.dart';
import 'package:crypto_currency_app/data/data.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: "active_cryptocurrencies")
  final int activeCryptocurrencies;
  @JsonKey(name: "total_cryptocurrencies")
  final int totalCryptocurrencies;
  @JsonKey(name: "active_market_pairs")
  final int activeMarketPairs;
  @JsonKey(name: "active_exchanges")
  final int active_exchanges;
}