import 'package:flutter/material.dart';
import '../presentation/login_screen/login_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen()
  };
}
