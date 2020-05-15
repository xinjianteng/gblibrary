import 'package:flutter/material.dart';


class NavigatorUtils{

  void startPageForName(BuildContext context,String routerName){
    Navigator.pushNamed(context, routerName);
  }


  void startPageForWidget(BuildContext context,Widget widget){
    Navigator.of(context).push(CustomerRoute(widget));
  }

}


class CustomerRoute extends PageRouteBuilder {
  final Widget widget;

  CustomerRoute(this.widget)
      : super(
    transitionDuration: Duration(milliseconds: 600),
    pageBuilder: (
        BuildContext context,
        Animation<double> animatable1,
        Animation<double> animatable2,
        ) {
      return FadeTransition(opacity: animatable1, child: widget);
    },
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animatable1,
        Animation<double> animatable2,
        Widget child,
        ) {
      //渐隐渐现的效果
      return FadeTransition(
        opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: animatable1,
          curve: Curves.fastOutSlowIn,
        )),
        child: child,
      );

//          缩放效果
//            return ScaleTransition(
//              scale: Tween(
//                begin: 0.0,
//                end: 1.0,
//              ).animate(CurvedAnimation(
//                parent: animatable1,
//                curve: Curves.fastOutSlowIn,
//              )),
//              child: widget,
//            );

      //旋转缩放效果
//            return RotationTransition(
//              turns: Tween(
//                begin: 0.0,
//                end: 1.0,
//              ).animate(CurvedAnimation(
//                  parent: animatable1, curve: Curves.fastOutSlowIn)),
//              child: ScaleTransition(
//                scale: Tween(
//                  begin: 0.0,
//                  end: 1.0,
//                ).animate(
//                  CurvedAnimation(
//                      parent: animatable1, curve: Curves.fastOutSlowIn),
//                ),
//                child: child,
//              ),
//            );

      //左右滑动动画
//
//            return SlideTransition(
//              position: Tween<Offset>(
//                begin: Offset(-1.0, 0.0),
//                end: Offset(0.0, 0.0),
//              ).animate(CurvedAnimation(
//                  parent: animatable1, curve: Curves.fastOutSlowIn)),
//              child: ScaleTransition(
//                scale: Tween(
//                  begin: 0.8,
//                  end: 1.0,
//                ).animate(CurvedAnimation(
//                    parent: animatable1, curve: Curves.fastOutSlowIn)),
//                child: child,
//              ),
//            );
    },
  );
}
