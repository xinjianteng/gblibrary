import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gblibrary/res/dimens.dart';

class EdgeInsetUtils {
  EdgeInsets getCommonLR() {
    return EdgeInsets.only(
        left: ScreenUtil().setWidth(GDimens.common_margin),
        right: ScreenUtil().setWidth(GDimens.common_margin));
  }

  EdgeInsets getCommonAll() {
    return EdgeInsets.only(
      left: ScreenUtil().setWidth(GDimens.common_margin),
      right: ScreenUtil().setWidth(GDimens.common_margin),
      top: ScreenUtil().setWidth(GDimens.common_margin),
      bottom: ScreenUtil().setWidth(GDimens.common_margin),
    );
  }

  EdgeInsets getBtnAll() {
    return EdgeInsets.only(
      left: ScreenUtil().setWidth(GDimens.btnH),
      right: ScreenUtil().setWidth(GDimens.btnH),
      top: ScreenUtil().setHeight(GDimens.btnV),
      bottom: ScreenUtil().setHeight(GDimens.btnV),
    );
  }
}
