import 'dart:ui';

import 'package:blocbase/common/core/themes/app_colors.dart';
import 'package:blocbase/common/core/themes/app_dimens.dart';
import 'package:blocbase/common/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:intl/intl.dart';

var pixelRatio = window.devicePixelRatio;
var logicalScreenSize = window.physicalSize / pixelRatio;
double width = logicalScreenSize.width;
double height = logicalScreenSize.height;

class Utils {
  static showToast(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: AppTextStyles.regularW500(context,
            size: AppDimens.textSize16, color: AppColors.primary),
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: color, width: 1, style: BorderStyle.solid)),
      backgroundColor: AppColors.white,
      duration: Duration(milliseconds: 3000),
      elevation: 2,
      margin: EdgeInsets.only(bottom: 50, right: 20, left: 20),
    ));
  }

  //check internet
  static Future<bool> checkConnectionInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  static final DateFormat _apiDateFormat = DateFormat('yyyy-MM-dd');
  static final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  static String? dateTimeToApiDate(DateTime? dateTime) =>
      dateTime == null ? null : _apiDateFormat.format(dateTime);

  static String? dateTimeToDate(DateTime? dateTime) =>
      dateTime == null ? null : _dateFormat.format(dateTime);

  static DateTime apiDateTimeStringToDate(String value) =>
      DateTime.parse(_apiDateFormat.format(DateTime.parse(value)));
}
