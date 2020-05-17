import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/res/dimens.dart';



class StyleUtils {

  TextStyle hintTextStyle(){
    return TextStyle(
      fontSize: ScreenUtil().setSp(GDimens.titleSize,allowFontScalingSelf: true),
      color: Colors.black12
    );
  }

}