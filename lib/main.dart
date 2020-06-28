import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:gblibrary/blocs/application_bloc.dart';
import 'package:gblibrary/blocs/bloc_provider.dart';
import 'package:gblibrary/blocs/main_bloc.dart';
import 'package:gblibrary/common/global.dart';
import 'package:gblibrary/page/ui/page/home_page.dart';
import 'package:gblibrary/page/ui/page/login_page.dart';
import 'package:gblibrary/page/ui/page/splash_page.dart';

import 'package:gblibrary/res/colors.dart';
import 'package:gblibrary/res/dimens.dart';
import 'package:gblibrary/res/strings.dart';

void main() {
  Global.init(() {
    runApp(BlocProvider<ApplicationBloc>(
      bloc: ApplicationBloc(),
      child: BlocProvider(
        child: MyApp(),
        bloc: MainBloc(),
      ),
    ));
  });
}

class MyApp extends StatelessWidget {
  Color _themeColor = GColors.app_main;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GStrings.appName,
      theme: ThemeData.light().copyWith(
        primaryColor: _themeColor,
        accentColor: _themeColor,
        indicatorColor: Colors.white,
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
  void initState() {
    super.initState();
    _initListener();
  }

  @override
  Widget build(BuildContext context) {
    //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    ScreenUtil.init(context,
        width: GDimens.ui_width,
        height: GDimens.ui_height,
        allowFontScaling: true);
    return SplashPageHome();
  }

  void _initListener() {
    final ApplicationBloc bloc = BlocProvider.of<ApplicationBloc>(context);
    bloc.appEventStream.listen((event) {});
  }
}

final Map<String, WidgetBuilder> routes = {
  HomePage.ROUTER_NAME: (context) => new HomePage(),
  LoginPage.ROUTER_NAME: (context) => new LoginPage(),
  SplashPage.ROUTER_NAME: (context) => new SplashPage(),
};
