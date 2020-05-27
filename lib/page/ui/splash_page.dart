import 'package:flutter/material.dart';
import 'package:gblibrary/page/home/home_page.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/strings.dart';
import 'package:gblibrary/res/styles.dart';
import 'package:gblibrary/utils/route_util.dart';
import 'package:gblibrary/utils/text_widget.dart';
import 'package:gblibrary/widget/btn_widget.dart';

class SplashPage extends StatelessWidget {
  static const String ROUTER_NAME = "/splash";

  @override
  Widget build(BuildContext context) {
    return SplashPageHome();
  }
}

class SplashPageHome extends StatefulWidget {
  @override
  _SplashPageHomeState createState() => _SplashPageHomeState();
}

class _SplashPageHomeState extends State<SplashPageHome> {
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Offstage(
            offstage: false,
            child: Container(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  _goMain();
                },
                child: BtnWidget().buildBtn(GStrings.jump + '($_count)'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _goMain() {
    RouteUtil.pushNamed(context, HomePage.ROUTER_NAME);
  }
}
