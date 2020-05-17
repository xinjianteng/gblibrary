import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/page/common/login_page.dart';
import 'package:gblibrary/page/home/home_page.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/res/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: res.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: UiAdapter(),
    );
  }
}

class UiAdapter extends StatefulWidget {
  @override
  _UiAdapterState createState() => _UiAdapterState();
}

class _UiAdapterState extends State<UiAdapter> {
  @override
  Widget build(BuildContext context) {
//设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    ScreenUtil.init(context,
        width: GDimens.ui_width,
        height: GDimens.ui_height,
        allowFontScaling: true);
    return LoginPage();
  }
}

final Map<String, WidgetBuilder> routes = {
  HomePage.ROUTER_NAME: (context) => new HomePage(),
};
