import 'package:flutter/material.dart';
import 'package:gblibrary/page/find/find_page.dart';
import 'package:gblibrary/page/looking/looking_page.dart';
import 'package:gblibrary/page/my/my_page.dart';
import 'package:gblibrary/page/shelf/shelf_page.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/utils/utils.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/page/home/widge/home_menu.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/res/imgs.dart';
import 'package:gblibrary/res/strings.dart';


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
        builder: (context, _, model) =>
            Scaffold(
              body: pages[model.current],
              bottomNavigationBar: BottomAppBar(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    HomeMenu(
                      0,
                      GStrings.shelf,
                      Utils.getImgPath(GImgs.menu_shelf_normal),
                      Utils.getImgPath(GImgs.menu_shelf),
                    ),
                    HomeMenu(
                      1,
                      GStrings.looking,
                      Utils.getImgPath(GImgs.menu_looking_normal),
                      Utils.getImgPath(GImgs.menu_looking),
                    ),
                    Image.asset(
                      Utils.getImgPath(GImgs.menu_send),
                      height: ScreenUtil().setHeight(GDimens.menuHeight),
                    ),
                    HomeMenu(
                      2,
                      GStrings.find,
                      Utils.getImgPath(GImgs.menu_find_normal),
                      Utils.getImgPath(GImgs.menu_find),
                    ),
                    HomeMenu(
                      3,
                      GStrings.my,
                      Utils.getImgPath(GImgs.menu_my_normal),
                      Utils.getImgPath(GImgs.menu_my),
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
