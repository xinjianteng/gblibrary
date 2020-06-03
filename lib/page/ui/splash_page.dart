import 'dart:math';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gblibrary/page/home/home_page.dart';
import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/imgs.dart';
import 'package:gblibrary/res/strings.dart';
import 'package:gblibrary/res/styles.dart';
import 'package:gblibrary/utils/edgeInset_utils.dart';
import 'package:gblibrary/utils/route_util.dart';
import 'package:gblibrary/utils/text_widget.dart';
import 'package:gblibrary/utils/utils.dart';
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
  TimerUtil _timerUtil;
  int _status = 0;
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                getSplashBg(),
                fit: BoxFit.fill,
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                child: Image.asset(
                  Utils.getImgPath(Imgs.logo),
                  fit: BoxFit.fill,
                  width: 50,
                ),
              ),
              Text(
                GStrings.appTip,
                style: TextStyle(color: GColors.app_btn),
              )
            ],
          ),
          Offstage(
            offstage: false,
            child: Container(
              padding: EdgeInsets.only(top: 60.0),
              alignment: Alignment.topRight,
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _doCountDown();
  }

  void _doCountDown() {
    setState(() {
      _status = 1;
    });
    _timerUtil = new TimerUtil(mTotalTime: 3 * 1000);
    _timerUtil.setOnTimerTickCallback((int tick) {
      double _tick = tick / 1000;
      setState(() {
        _count = _tick.toInt();
      });
      if (_tick == 0) {
        _goMain();
      }
    });
    _timerUtil.startCountDown();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timerUtil.cancel();
  }

  void _goMain() {
    RouteUtil.pushReplacementNamed(context, HomePage.ROUTER_NAME);
  }

  String getSplashBg() {
    int _hour = DateTime.now().hour;
    if (0 <= _hour && _hour < 3) {
      return Utils.getImgPath(Imgs.splash_bg_0_3);
    } else if (3 <= _hour && _hour < 5) {
      return Utils.getImgPath(Imgs.splash_bg_3_5);
    } else if (5 <= _hour && _hour < 10) {
      return Utils.getImgPath(Imgs.splash_bg_5_10);
    } else if (10 <= _hour && _hour < 14) {
      return Utils.getImgPath(Imgs.splash_bg_10_14);
    } else if (14 <= _hour && _hour < 17) {
      return Utils.getImgPath(Imgs.splash_bg_14_17);
    } else if (17 <= _hour && _hour < 20) {
      return Utils.getImgPath(Imgs.splash_bg_17_20);
    } else {
      return Utils.getImgPath(Imgs.splash_bg_20_00);
    }
  }
}
