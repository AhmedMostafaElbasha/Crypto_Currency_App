// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

USD _$USDFromJson(Map<String, dynamic> json) {
  return USD(
    totalMarketCap: (json['total_market_cap'] as num)?.toDouble(),
    totalVolume24h: (json['total_volume_24h'] as num)?.toDouble(),
    totalVolume24hReported:
        (json['total_volume_24h_reported'] as num)?.toDouble(),
    altcoinVolume24h: (json['altcoin_volume_24h'] as num)?.toDouble(),
    altcoinVolume24hReported:
        (json['altcoin_volume_24h_reported'] as num)?.toDouble(),
    altcoinMarketCap: (json['altcoin_market_cap'] as num)?.toDouble(),
    lastUpdated: json['last_updated'] as String,
  );
}

Map<String, dynamic> _$USDToJson(USD instance) => <String, dynamic>{
      'total_market_cap': instance.totalMarketCap,
      'total_volume_24h': instance.totalVolume24h,
      'total_volume_24h_reported': instance.totalVolume24hReported,
      'altcoin_volume_24h': instance.altcoinVolume24h,
      'altcoin_volume_24h_reported': instance.altcoinVolume24hReported,
      'altcoin_market_cap': instance.altcoinMarketCap,
      'last_updated': instance.lastUpdated,
    };
