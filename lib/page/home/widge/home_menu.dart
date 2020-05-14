import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gblibrary/page/home/home_page.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:scoped_model/scoped_model.dart';

//首页菜单控件
// ignore: must_be_immutable
class HomeMenu extends StatelessWidget {
  int homeMenuPosition;
  String title;
  String imgPath;
  String imgPathNormal;

  HomeMenu(this.homeMenuPosition, this.title, this.imgPathNormal, this.imgPath);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<HomeModel>(
        builder: (context, _, model) => Container(
              height: ScreenUtil().setHeight(GDimens.menuHeight),
              child: Center(
                child: GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        model.current == homeMenuPosition
                            ? imgPath
                            : imgPathNormal,
                        height: ScreenUtil().setHeight(GDimens.menuImgSize),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(GDimens.menuTextSize,
                              allowFontScalingSelf: true),
                          color: model.current == homeMenuPosition
                              ? GColors.menu_text_sel
                              : GColors.menu_text_nor,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    model.setCurrent(homeMenuPosition);
                  },
                ),
              ),
            ));
  }
}
