import 'package:flutter/cupertino.dart';

//*Navegacion por Keys
// class _NavigationService {
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//   //*Navegar hacia
//   Future navigateTo(String routeName) {
//     return navigatorKey.currentState!.pushNamed(routeName);
//   }

//   void goBack(String routeName) {
//     return navigatorKey.currentState!.pop();
//   }
// }

// final navigationService = new _NavigationService();

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  //*Navegar hacia
  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeName) {
    return navigatorKey.currentState!.pop();
  }
}
