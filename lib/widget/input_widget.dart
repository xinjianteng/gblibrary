import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblibrary/utils/edgeInset_utils.dart';
import 'package:gblibrary/utils/style_utils.dart';

class InputWidget{
  
  Widget buildPhone(TextEditingController controller) {
    return Container(
      padding: EdgeInsetUtils().getCommonLR(),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: '请输入手机号',
          hintStyle: StyleUtils().hintTextStyle(),
        ),
      ),
    );
  }
  
  Widget buildPassword(TextEditingController controller) {
    return Container(
      padding: EdgeInsetUtils().getCommonLR(),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: '请输入手机号',
          hintStyle: StyleUtils().hintTextStyle(),
        ),
      ),
    );
  }


  Widget buildCode(TextEditingController controller) {
    return Container(
      padding: EdgeInsetUtils().getCommonLR(),
      child: Row(
        children: <Widget>[
          TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: '请输入手机号',
              hintStyle: StyleUtils().hintTextStyle(),
            ),
          ),
          TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: '请输入手机号',
              hintStyle: StyleUtils().hintTextStyle(),
            ),
          ),
        ],
      )
    );
  }
  
  
  
}