import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crypto_currency_app/constants/constants.dart';
import 'package:crypto_currency_app/presentation/presentation.dart';

class AppErrorState extends StatelessWidget {
  final String errorMessage;

  AppErrorState(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _errorIcon,
        _errorMessage,
      ],
    );
  }

  Widget get _errorIcon {
    return Icon(
      AppIcons.error,
      size: 100,
      color: AppColors.red,
    );
  }

  Widget get _errorMessage {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(26),
        left: ScreenUtil().setWidth(26),
        right: ScreenUtil().setWidth(26),
      ),
      child: AppTextDisplay(
        translation: errorMessage,
        textStyle: AppTextStyles.stateMessage,
      ),
    );
  }
}
