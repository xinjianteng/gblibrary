import 'package:flutter/material.dart';
import 'package:gblibrary/res/strings.dart';

class ShelfPage extends StatelessWidget {
  static const String ROUTER_NAME = "";

  @override
  Widget build(BuildContext context) {
    return ShelfPageHome();
  }
}

class ShelfPageHome extends StatefulWidget {
  @override
  _ShelfPageHomeState createState() => _ShelfPageHomeState();
}

class _ShelfPageHomeState extends State<ShelfPageHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        res.shelf,
        style: TextStyle(color: Colors.red, fontSize: 25),
      ),
    );
  }
}
