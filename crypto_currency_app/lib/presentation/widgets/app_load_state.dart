import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crypto_currency_app/constants/constants.dart';
import 'package:crypto_currency_app/presentation/presentation.dart';

class AppLoadState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _circularProgressIndicator,
          _pleaseWaitStatement,
        ],
      ),
    );
  }

  Widget get _circularProgressIndicator {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.black),
    );
  }

  Widget get _pleaseWaitStatement {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(26),
        left: ScreenUtil().setWidth(26),
        right: ScreenUtil().setWidth(26),
      ),
      child: AppTextDisplay(
        translation: AppStrings.loadingStateMessage,
        textStyle: AppTextStyles.stateMessage,
        maxLines: 2,
      ),
    );
  }
}
