import 'package:flutter/material.dart';
import 'package:gblibrary/page/find/find_page.dart';
import 'package:gblibrary/page/looking/looking_page.dart';
import 'package:gblibrary/page/my/my_page.dart';
import 'package:gblibrary/page/shelf/shelf_page.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/page/home/widge/home_menu.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/res/imgs.dart';
import 'package:gblibrary/res/strings.dart';
import 'package:gblibrary/utils/navigator_utils.dart';


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
      child: ScopedModelDescendant<HomeModel>(
        builder: (context, _, model) => Scaffold(
          body: pages[model.current],
          floatingActionButton: FloatingActionButton(
            backgroundColor: GColors.theme_color_dark,
            onPressed: () {
              NavigatorUtils().startPageForName(context, HomePage.ROUTER_NAME);
            },
            tooltip: '发布',
            child: Image.asset(
              GImgs.menu_send,
              width: ScreenUtil().setWidth(GDimens.menuBigSize),
              height: ScreenUtil().setWidth(GDimens.menuBigSize),
            ),
          ),
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
                  GImgs.menu_shelf
                ),
                HomeMenu(
                  1,
                  res.looking,
                  GImgs.menu_looking_normal,
                  GImgs.menu_looking
                ),
                HomeMenu(
                  2,
                  res.find,
                  GImgs.menu_find_normal,
                  GImgs.menu_find
                ),
                HomeMenu(
                  3,
                  res.my,
                  GImgs.menu_my_normal,
                  GImgs.menu_my
                ),
              ],
            ),
          ),
        ),
      ),
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
