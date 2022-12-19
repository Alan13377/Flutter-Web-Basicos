import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "package:flutter/foundation.dart" show kIsWeb;
import 'package:flutter_bases/ui/views/counter.view.dart';
import 'package:flutter_bases/ui/views/counter_view_riverpod.dart';
import 'package:flutter_bases/ui/views/view_404.dart';

//*Permite regresar las rutas y una por defecto si no exite
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/stateful":
        return _fadeRoute(CounterView(), "/stateful");
      case "/riverpod":
        return _fadeRoute(CounterRiverpodView(), "/riverpod");
      default:
        return _fadeRoute(View404(), "/404");
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: ((context, animation, secondaryAnimation) {
          return child;
        }),
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: ((context, animation, secondaryAnimation, child) {
          //*Animacion si esta en web o no
          return (kIsWeb)
              ? FadeTransition(
                  opacity: animation,
                  child: child,
                )
              : CupertinoPageTransition(
                  primaryRouteAnimation: animation,
                  secondaryRouteAnimation: secondaryAnimation,
                  child: child,
                  linearTransition: true);
        }));
  }
}
