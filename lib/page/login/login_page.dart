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
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
  }
  
  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(GStrings.login), elevation: 1,backgroundColor: Colors.green,),
      body: Column(
        children: <Widget>[
          InputWidget().buildPhone(_phoneController),
          InputWidget().buildCode(_codeController),
//          Image.asset(GImgs.menu_send),
//          RaisedButton(onPressed: () {
//            _loginViewModel.refreshData(context);
//          }),
//          Expanded(
//            child: SingleChildScrollView(
//              child: StreamBuilder(
//                stream: _loginViewModel.dataStream,
//                builder: (BuildContext context,
//                    AsyncSnapshot<String> snapshot) {
//                  if (snapshot.connectionState == ConnectionState.waiting) {
//                    return Center(
//                      child: CircularProgressIndicator(),
//                    );
//                  }
//                  return Text(
//                    "${snapshot.hasError ? snapshot.error : snapshot.data}",
//                  );
//                },
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
  
  
}


