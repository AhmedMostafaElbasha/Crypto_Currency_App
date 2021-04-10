// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    activeCryptocurrencies: json['active_cryptocurrencies'] as int,
    totalCryptocurrencies: json['total_cryptocurrencies'] as int,
    activeMarketPairs: json['active_market_pairs'] as int,
    activeExchanges: json['active_exchanges'] as int,
    totalExchanges: json['total_exchanges'] as int,
    ethDominance: (json['eth_dominance'] as num)?.toDouble(),
    btcDominance: (json['btc_dominance'] as num)?.toDouble(),
    defiVolume24h: (json['defi_volume_24h'] as num)?.toDouble(),
    defiVolume24hReported:
        (json['defi_volume_24h_reported'] as num)?.toDouble(),
    defiMarketCap: (json['defi_market_cap'] as num)?.toDouble(),
    defi24hPercentageChange:
        (json['defi_24h_percentage_change'] as num)?.toDouble(),
    stablecoinVolume24h: (json['stablecoin_volume_24h'] as num)?.toDouble(),
    stablecoinVolume24hReported:
        (json['stablecoin_volume_24h_reported'] as num)?.toDouble(),
    stablecoinMarketCap: (json['stablecoin_market_cap'] as num)?.toDouble(),
    stablecoin24hPercentageChange:
        (json['stablecoin_24h_percentage_change'] as num)?.toDouble(),
    derivativesVolume24h: (json['derivatives_volume_24h'] as num)?.toDouble(),
    derivativesVolume24hReported:
        (json['derivatives_volume_24h_reported'] as num)?.toDouble(),
    derivatives24hPercentageChange:
        (json['derivatives_24h_percentage_change'] as num)?.toDouble(),
    quote: json['quote'] == null
        ? null
        : Quote.fromJson(json['quote'] as Map<String, dynamic>),
    lastUpdated: json['last_updated'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'active_cryptocurrencies': instance.activeCryptocurrencies,
      'total_cryptocurrencies': instance.totalCryptocurrencies,
      'active_market_pairs': instance.activeMarketPairs,
      'active_exchanges': instance.activeExchanges,
      'total_exchanges': instance.totalExchanges,
      'eth_dominance': instance.ethDominance,
      'btc_dominance': instance.btcDominance,
      'defi_volume_24h': instance.defiVolume24h,
      'defi_volume_24h_reported': instance.defiVolume24hReported,
      'defi_market_cap': instance.defiMarketCap,
      'defi_24h_percentage_change': instance.defi24hPercentageChange,
      'stablecoin_volume_24h': instance.stablecoinVolume24h,
      'stablecoin_volume_24h_reported': instance.stablecoinVolume24hReported,
      'stablecoin_market_cap': instance.stablecoinMarketCap,
      'stablecoin_24h_percentage_change':
          instance.stablecoin24hPercentageChange,
      'derivatives_volume_24h': instance.derivativesVolume24h,
      'derivatives_volume_24h_reported': instance.derivativesVolume24hReported,
      'derivatives_24h_percentage_change':
          instance.derivatives24hPercentageChange,
      'quote': instance.quote,
      'last_updated': instance.lastUpdated,
    };
