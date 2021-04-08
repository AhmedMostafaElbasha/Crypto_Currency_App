import 'package:equatable/equatable.dart';

abstract class LatestQuotesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LatestQuotesFetched extends LatestQuotesEvent {}

class LatestQuotesRefreshed extends LatestQuotesEvent {}
