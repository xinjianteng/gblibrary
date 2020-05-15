import 'package:flutter/widgets.dart';
import 'package:gblibrary/utils/style_utils.dart';

class TextUtils {
  Text menuText(String title,Color col) {
    return Text(
      title,
      style: StyleUtils().titleStyle(col),
    );
  }
}
