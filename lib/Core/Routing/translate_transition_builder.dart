import 'package:flutter/material.dart';

class TranslateTransitionBuilder {
  static RouteTransitionsBuilder get translateTransition {
    return (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const opacityBegin = 0.0;
      const end = Offset.zero;
      const opacityEnd = 1.0;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var opacityTween = Tween(begin: opacityBegin, end: opacityEnd)
          .chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation.drive(opacityTween),
        child: SlideTransition(
          position: animation.drive(tween),
          child: child,
        ),
      );
    };
  }
}
