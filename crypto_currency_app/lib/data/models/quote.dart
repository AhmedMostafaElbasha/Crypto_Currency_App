import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:crypto_currency_app/data/data.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote {
  @JsonKey(name: "USD")
  final USD usd;

  Quote({
    this.usd,
  });

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}
