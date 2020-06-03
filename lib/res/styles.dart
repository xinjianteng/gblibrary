import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/dimens.dart';

class Decorations {
  static Decoration btn = BoxDecoration(
    color: GColors.app_btn,
    borderRadius: BorderRadius.all(
        Radius.circular(ScreenUtil().setWidth(GDimens.btnCirMin))),
    border: Border.all(
      width: 0.00,
      color: GColors.divider,
    ),
    boxShadow: [
      BoxShadow(
        color: GColors.app_btn,
        offset: Offset(2.0, 3.0),
        blurRadius: 6.0, /*,spreadRadius:2.0*/
      ),
    ],
  );
}
