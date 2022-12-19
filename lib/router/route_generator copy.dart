import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bases/ui/pages/counter.page.dart';
import 'package:flutter_bases/ui/pages/counter_page_riverpod.dart';
import 'package:flutter_bases/ui/pages/page_404.dart';
import "package:flutter/foundation.dart" show kIsWeb;

//*Permite regresar las rutas y una por defecto si no exite
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/stateful":
        return _fadeRoute(CounterPage(), "/stateful");
      case "/riverpod":
        return _fadeRoute(CounterRiverpodPage(), "/riverpod");
      default:
        return _fadeRoute(Page404(), "/404");
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
