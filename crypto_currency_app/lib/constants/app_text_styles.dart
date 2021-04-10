import 'package:flutter/material.dart';
import 'package:crypto_currency_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle get dataTitle {
    return TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle get dataValue {
    return TextStyle(
      color: AppColors.black,
      fontSize: 11,
    );
  }

  static TextStyle get stateMessage {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get dataSectionHeading {
    return TextStyle(
      fontSize: 16,
      color: AppColors.blueGrey,
      fontWeight: FontWeight.bold,
    );
  }
}
