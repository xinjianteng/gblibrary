import 'package:flutter/material.dart';
import 'package:gblibrary/page/home/home_page.dart';
import 'package:gblibrary/page/home/widge/home_menu.dart';
import 'package:gblibrary/res/imgs.dart';
import 'package:gblibrary/res/strings.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeBody extends StatefulWidget {
  List<Widget> pages;

  HomeBody(this.pages);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<HomeModel>(
      builder: (context, _, model) => Scaffold(
        body: widget.pages[model.current],
        bottomNavigationBar: BottomAppBar(
          notchMargin: 0,
          elevation: 0,
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              HomeMenu(
                0,
                res.shelf,
                GImgs.menu_shelf_normal,
                GImgs.menu_shelf,
              ),
              HomeMenu(
                1,
                res.looking,
                GImgs.menu_looking_normal,
                GImgs.menu_looking,
              ),
              HomeMenu(
                2,
                res.find,
                GImgs.menu_find_normal,
                GImgs.menu_find,
              ),
              HomeMenu(
                3,
                res.my,
                GImgs.menu_my_normal,
                GImgs.menu_my,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
