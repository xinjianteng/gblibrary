import 'package:flutter/material.dart';
import 'package:gblibrary/page/find/find_page.dart';
import 'package:gblibrary/page/home/widge/home_body.dart';
import 'package:gblibrary/page/looking/looking_page.dart';
import 'package:gblibrary/page/my/my_page.dart';
import 'package:gblibrary/page/shelf/shelf_page.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatelessWidget {
  static const String ROUTER_NAME = "/HomePage";

  @override
  Widget build(BuildContext context) {
    return HomePageHome();
  }
}

class HomePageHome extends StatefulWidget {
  @override
  _HomePageHomeState createState() => _HomePageHomeState();
}

class _HomePageHomeState extends State<HomePageHome> {
  //点击导航项是要显示的页面
  final pages = [
    ShelfPage(),
    LookingPage(),
    FindPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: HomeModel(),
      child: HomeBody(pages),
    );
  }
}

class HomeModel extends Model {
  int _current = 0;

  int get current => _current;


  void setCurrent(int homeMenuPosition) {
    _current = homeMenuPosition;
    notifyListeners();
  }
}
