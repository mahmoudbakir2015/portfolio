import 'package:flutter/material.dart';

class AnimationRoute extends PageRouteBuilder {
  final page;
  AnimationRoute({this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = Offset(1, 0);
              var end = Offset(0, 0);
              var tween = Tween(
                begin: begin,
                end: end,
              );
              var offsetAnimation = animation.drive(tween);
              var curvedAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInBack);

              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
}
