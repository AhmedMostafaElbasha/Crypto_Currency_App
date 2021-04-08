import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
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
  final int activeExchanges;
  @JsonKey(name: "total_exchanges")
  final int totalExchanges;
  @JsonKey(name: "eth_dominance")
  final double ethDominance;
  @JsonKey(name: "btc_dominance")
  final double btcDominance;
  @JsonKey(name: "defi_volume_24h")
  final double defiVolume24h;
  @JsonKey(name: "defi_volume_24h_reported")
  final double defiVolume24hReported;
  @JsonKey(name: "defi_market_cap")
  final double defiMarketCap;
  @JsonKey(name: "defi_24h_percentage_change")
  final double defi24hPercentageChange;
  @JsonKey(name: "stablecoin_volume_24h")
  final double stablecoinVolume24h;
  @JsonKey(name: "stablecoin_volume_24h_reported")
  final double stablecoinVolume24hReported;
  @JsonKey(name: "stablecoin_market_cap")
  final double stablecoinMarketCap;
  @JsonKey(name: "stablecoin_24h_percentage_change")
  final double stablecoin24hPercentageChange;
  @JsonKey(name: "derivatives_volume_24h")
  final double derivativesVolume24h;
  @JsonKey(name: "derivatives_volume_24h_reported")
  final double derivativesVolume24hReported;
  @JsonKey(name: "derivatives_24h_percentage_change")
  final double derivatives24hPercentageChange;
  final Quote quote;
  @JsonKey(name: "last_updated")
  final double lastUpdated;

  Data({
    this.activeCryptocurrencies,
    this.totalCryptocurrencies,
    this.activeMarketPairs,
    this.activeExchanges,
    this.totalExchanges,
    this.ethDominance,
    this.btcDominance,
    this.defiVolume24h,
    this.defiVolume24hReported,
    this.defiMarketCap,
    this.defi24hPercentageChange,
    this.stablecoinVolume24h,
    this.stablecoinVolume24hReported,
    this.stablecoinMarketCap,
    this.stablecoin24hPercentageChange,
    this.derivativesVolume24h,
    this.derivativesVolume24hReported,
    this.derivatives24hPercentageChange,
    this.quote,
    this.lastUpdated,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
