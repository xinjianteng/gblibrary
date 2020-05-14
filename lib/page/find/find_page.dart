import 'package:flutter/material.dart';
import 'package:gblibrary/res/strings.dart';
class FindPage extends StatelessWidget {

  static const String ROUTER_NAME = "";

  @override
  Widget build(BuildContext context) {
    return FindPageHome();
  }
}

class FindPageHome extends StatefulWidget {
  @override
  _FindPageHomeState createState() => _FindPageHomeState();
}

class _FindPageHomeState extends State<FindPageHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        res.find,
        style: TextStyle(color: Colors.red, fontSize: 25),
      ),
    );
  }
}


