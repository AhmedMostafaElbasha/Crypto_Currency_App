import 'package:json_annotation/json_annotation.dart';

part 'usd.g.dart';

@JsonSerializable()
class USD {
  @JsonKey(name: "total_market_cap")
  final double totalMarketCap;
  @JsonKey(name: "total_volume_24h")
  final double totalVolume24h;
  @JsonKey(name: "total_volume_24h_reported")
  final double totalVolume24hReported;
  @JsonKey(name: "altcoin_volume_24h")
  final double altcoinVolume24h;
  @JsonKey(name: "altcoin_volume_24h_reported")
  final double altcoinVolume24hReported;
  @JsonKey(name: "altcoin_market_cap")
  final double altcoinMarketCap;
  @JsonKey(name: "last_updated")
  final String lastUpdated;

  USD({
    this.totalMarketCap,
    this.totalVolume24h,
    this.totalVolume24hReported,
    this.altcoinVolume24h,
    this.altcoinVolume24hReported,
    this.altcoinMarketCap,
    this.lastUpdated,
  });

  factory USD.fromJson(Map<String, dynamic> json) => _$USDFromJson(json);

  Map<String, dynamic> toJson() => _$USDToJson(this);
}
