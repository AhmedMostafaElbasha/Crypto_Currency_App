// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_latest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotesLatestResponse _$QuotesLatestResponseFromJson(Map<String, dynamic> json) {
  return QuotesLatestResponse(
    status: json['status'] == null
        ? null
        : Status.fromJson(json['status'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QuotesLatestResponseToJson(
        QuotesLatestResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
