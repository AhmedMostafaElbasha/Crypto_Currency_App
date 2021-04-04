import 'package:flutter/material.dart';
import 'package:crypto_currency_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle get cryptoCurrencyName {
    return TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle get cryptoCurrencyPrice {
    return TextStyle(color: AppColors.black);
  }

  static TextStyle get positiveChangeRate {
    return TextStyle(color: AppColors.green);
  }

  static TextStyle get negativeChangeRate {
    return TextStyle(color: AppColors.red);
  }
}
