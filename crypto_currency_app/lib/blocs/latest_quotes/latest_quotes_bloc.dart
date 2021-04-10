import 'package:bloc/bloc.dart';
import 'package:crypto_currency_app/data/data.dart';
import 'package:crypto_currency_app/blocs/blocs.dart';
import 'package:crypto_currency_app/utilities/utilities.dart';
import 'package:crypto_currency_app/constants/constants.dart';

class LatestQuotesBloc extends Bloc<LatestQuotesEvent, LatestQuoteState> {
  QuotesLatestResponse _quotesLatestResponse;
  LatestQuotesBloc() : super(LatestQuotesInitial());

  @override
  Stream<LatestQuoteState> mapEventToState(LatestQuotesEvent event) async* {
    if (event is LatestQuotesFetched) {
      yield* _mapLatestQuotesFetchedToState(event);
    }
    if (event is LatestQuotesRefreshed) {
      yield* _mapLatestQuotesRefreshedToState(event);
    }
  }

  Stream<LatestQuoteState> _mapLatestQuotesFetchedToState(
      LatestQuotesFetched event) async* {
    yield LatestQuotesLoadInProgress();

    final bool isConnected = await isInternetConnected();

    if (isConnected) {
      _quotesLatestResponse = await CryptoCurrencyRepository.latestQuotes();

      if (_quotesLatestResponse != null) {
        yield LatestQuotesLoadSuccess(_quotesLatestResponse);
      } else {
        yield LatestQuotesLoadFailure(AppStrings.noDataError);
      }
    } else {
      yield LatestQuotesLoadFailure(AppStrings.noInternetError);
    }
  }

  Stream<LatestQuoteState> _mapLatestQuotesRefreshedToState(
      LatestQuotesRefreshed event) async* {
    yield LatestQuotesLoadInProgress();

    final bool isConnected = await isInternetConnected();

    if (isConnected) {
      _quotesLatestResponse = await CryptoCurrencyRepository.latestQuotes();

      if (_quotesLatestResponse != null) {
        yield LatestQuotesLoadSuccess(_quotesLatestResponse);
      } else {
        yield LatestQuotesLoadFailure(AppStrings.noDataError);
      }
    } else {
      yield LatestQuotesLoadFailure(AppStrings.noInternetError);
    }
  }
}
