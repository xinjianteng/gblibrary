import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/utils/style_utils.dart';

class TextUtils {
  Text menuText(String title,Color col) {
    return Text(
      title,
      style: TextStyle(
          fontSize: ScreenUtil().setSp(GDimens.menuTextSize,allowFontScalingSelf: true),
          color: col
      ),
    );
  }
}
