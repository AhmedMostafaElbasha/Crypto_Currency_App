import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:crypto_currency_app/data/data.dart';

part 'quotes_latest_response.g.dart';

@JsonSerializable()
class QuotesLatestResponse {
  final Status status;
  final Data data;

  QuotesLatestResponse({
    this.status,
    this.data,
  });

  factory QuotesLatestResponse.fromJson(Map<String, dynamic> json) =>
      _$QuotesLatestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QuotesLatestResponseToJson(this);
}
