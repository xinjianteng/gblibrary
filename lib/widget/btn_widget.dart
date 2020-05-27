import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblibrary/res/styles.dart';
import 'package:gblibrary/utils/edgeInset_utils.dart';
import 'package:gblibrary/utils/style_utils.dart';
import 'package:gblibrary/utils/text_widget.dart';

class BtnWidget {
  Widget buildBtn(String str) {
    return Container(
      padding: EdgeInsetUtils().getBtnAll(),
      child: TextWidget().btnText(str),
      decoration: Decorations.btn,
    );
  }
}
