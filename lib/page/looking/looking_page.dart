import 'package:flutter/material.dart';
import 'package:gblibrary/res/strings.dart';

class LookingPage extends StatelessWidget {
  static const String ROUTER_NAME = "";

  @override
  Widget build(BuildContext context) {
    return LookingPageHome();
  }
}

class LookingPageHome extends StatefulWidget {
  @override
  _LookingPageHomeState createState() => _LookingPageHomeState();
}

class _LookingPageHomeState extends State<LookingPageHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        GStrings.looking,
        style: TextStyle(color: Colors.red, fontSize: 25),
      ),
    );
  }
}
