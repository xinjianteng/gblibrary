import 'package:flutter/material.dart';
import 'package:gblibrary/res/strings.dart';

class MyPage extends StatelessWidget {
  static const String ROUTER_NAME = "";

  @override
  Widget build(BuildContext context) {
    return MyPageHome();
  }
}

class MyPageHome extends StatefulWidget {
  @override
  _MyPageHomeState createState() => _MyPageHomeState();
}

class _MyPageHomeState extends State<MyPageHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        GStrings.my,
        style: TextStyle(color: Colors.red, fontSize: 25),
      ),
    );
  }
}
