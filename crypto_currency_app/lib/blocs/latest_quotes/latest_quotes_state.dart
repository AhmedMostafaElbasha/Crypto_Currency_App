import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:crypto_currency_app/data/data.dart';

abstract class LatestQuoteState extends Equatable {
  @override
  List<Object> get props => [];
}

class LatestQuotesInitial extends LatestQuoteState {}

class LatestQuotesLoadInProgress extends LatestQuoteState {}

class LatestQuotesLoadSuccess extends LatestQuoteState {
  final QuotesLatestResponse quotesLatestResponse;

  LatestQuotesLoadSuccess(this.quotesLatestResponse);

  @override
  List<Object> get props => [quotesLatestResponse];
}

class LatestQuotesLoadFailure extends LatestQuoteState {
  final String error;

  LatestQuotesLoadFailure(this.error);

  @override
  List<Object> get props => [error];
}
