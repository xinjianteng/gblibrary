import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/dimens.dart';

class TextWidget {
  double getFontSize(double size) {
    return ScreenUtil().setSp(size, allowFontScalingSelf: true);
  }

  Text menuText(String title, Color col) {
    return Text(
      title,
      style: TextStyle(
        fontSize: getFontSize(GDimens.menuTextSize),
        color: col,
      ),
    );
  }

  Text btnText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: getFontSize(GDimens.btnTextSize),
        color: GColors.app_btn_tv,
      ),
    );
  }



}
