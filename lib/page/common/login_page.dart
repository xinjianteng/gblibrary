import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/res/imgs.dart';
import 'package:gblibrary/res/strings.dart';
import 'package:gblibrary/utils/edgeInset_utils.dart';
import 'package:gblibrary/utils/style_utils.dart';
import 'package:gblibrary/widget/input_widget.dart';

class LoginPage extends StatelessWidget {
  
  static const String ROUTER_NAME = "/Login";
  
  @override
  Widget build(BuildContext context) {
    return LoginPageHome();
  }
}

class LoginPageHome extends StatefulWidget {
  @override
  _LoginPageHomeState createState() => _LoginPageHomeState();
}

class _LoginPageHomeState extends State<LoginPageHome> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(res.login), elevation: 1.0,),
      body: Column(
        children: <Widget>[
          Image.asset(GImgs.menu_send),
          InputWidget().buildPhone(phoneController),
          InputWidget().buildCode(codeController),
        ],
      ),
    );
  }


}


