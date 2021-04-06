import 'package:json_annotation/json_annotation.dart';
import 'package:crypto_currency_app/data/data.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  @JsonKey(name: "timestamp")
  final String timeStamp;
  @JsonKey(name: "error_code")
  final int errorCode;
  @JsonKey(name: "error_message")
  final String errorMessage;
  final int elapsed;
  @JsonKey(name: "credit_count")
  final String creditCount;
  final String notice;

  Status({
    this.timeStamp,
    this.errorCode,
    this.errorMessage,
    this.elapsed,
    this.creditCount,
    this.notice,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
