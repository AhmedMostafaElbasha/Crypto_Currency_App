import 'package:crypto_currency_app/data/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_currency_app/blocs/blocs.dart';
import 'package:crypto_currency_app/constants/constants.dart';
import 'package:crypto_currency_app/presentation/presentation.dart';
import 'package:crypto_currency_app/data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppTextDisplay(
          text: "Crypto Currency App",
        ),
        actions: [
          IconButton(
            icon: Icon(AppIcons.refresh),
            onPressed: () {
              BlocProvider.of<LatestQuotesBloc>(context)
                ..add(LatestQuotesRefreshed());
            },
          ),
        ],
      ),
      body: Container(
        // height: ScreenUtil().screenHeight,
        // width: ScreenUtil().scaleWidth,
        child: _quotesList(context),
      ),
    );
  }

  Widget _quotesList(BuildContext context) {
    return BlocBuilder<LatestQuotesBloc, LatestQuoteState>(
      builder: (context, state) {
        if (state is LatestQuotesLoadInProgress) {
          return AppLoadState();
        }

        if (state is LatestQuotesLoadSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(16),
              horizontal: ScreenUtil().setWidth(12),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _dataSectionHeading(AppStrings.general),
                  generalQuotesDetails(state.quotesLatestResponse.data),
                  _dataSectionHeading(AppStrings.dominance),
                  dominanceQuotesDetails(state.quotesLatestResponse.data),
                  _dataSectionHeading(AppStrings.defi),
                  defiQuotesDetails(state.quotesLatestResponse.data),
                  _dataSectionHeading(AppStrings.stableCoin),
                  stableCoinQuotesDetails(state.quotesLatestResponse.data),
                  _dataSectionHeading(AppStrings.derivatives),
                  derivativesQuotesDetails(state.quotesLatestResponse.data),
                  _dataSectionHeading(AppStrings.usd),
                  usdQuoteDetails(state.quotesLatestResponse.data.quote.usd),
                ],
              ),
            ),
          );
        }

        if (state is LatestQuotesLoadFailure) {
          return AppErrorState(state.error);
        }

        return Center(
          child: AppTextDisplay(
            text: "An error is occured with Bloc Execution",
          ),
        );
      },
    );
  }

  Widget _dataSectionHeading(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setHeight(10),
        horizontal: ScreenUtil().setWidth(1),
      ),
      child: Container(
        child: AppTextDisplay(
          translation: title,
          textStyle: AppTextStyles.dataSectionHeading,
        ),
      ),
    );
  }

  Widget generalQuotesDetails(Data data) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.activeCryptocurrencies,
              data.activeCryptocurrencies.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.totalCryptocurrencies,
              data.totalCryptocurrencies.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.activeMarketPairs,
              data.activeMarketPairs.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.activeExchanges,
              data.activeExchanges.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.totalExchanges,
              data.totalExchanges.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.lastUpdated,
              data.lastUpdated,
            ),
          ],
        ),
      ),
    );
  }

  Widget dominanceQuotesDetails(Data data) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.ethDominance,
              data.ethDominance.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.btcDominance,
              data.btcDominance.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget defiQuotesDetails(Data data) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.defiVolume24h,
              data.defiVolume24h.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.defiVolume24hReported,
              data.defiVolume24hReported.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.defiMarketCap,
              data.defiMarketCap.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.defi24hPercentageChange,
              data.defi24hPercentageChange.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget stableCoinQuotesDetails(Data data) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.stableCoinVolume24h,
              data.stablecoinVolume24h.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.stableCoinVolume24hReported,
              data.stablecoinVolume24hReported.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.stableCoinMarketCap,
              data.stablecoinMarketCap.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.stableCoin24hPercentageChange,
              data.stablecoin24hPercentageChange.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget derivativesQuotesDetails(Data data) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.derivativesVolume24h,
              data.derivativesVolume24h.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.derivativesVolume24hReported,
              data.derivativesVolume24hReported.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.derivatives24hPercentageChange,
              data.stablecoin24hPercentageChange.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget usdQuoteDetails(USD usd) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          width: 1,
          color: AppColors.grey100,
        ),
      ),
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataDisplay(
              AppStrings.usdTotalMarketCap,
              usd.totalMarketCap.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdTotalVolume24h,
              usd.totalVolume24h.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdTotalVolume24hReported,
              usd.totalVolume24hReported.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdAltCoinVolume24h,
              usd.altcoinVolume24h.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdAltCoinVolume24hReported,
              usd.altcoinVolume24hReported.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdTotalMarketCap,
              usd.altcoinMarketCap.toStringAsFixed(2),
            ),
            _dataDisplay(
              AppStrings.usdLastUpdated,
              usd.lastUpdated,
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataDisplay(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(8),
        vertical: ScreenUtil().setHeight(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppTextDisplay(
            translation: title,
            textStyle: AppTextStyles.dataTitle,
          ),
          AppTextDisplay(
            text: value,
            textStyle: AppTextStyles.dataValue,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
