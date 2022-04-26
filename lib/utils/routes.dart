import 'package:flutter/material.dart';
import 'package:sepran_clone/Screens/home_screen/home_screen.dart';
import 'package:sepran_clone/Screens/splash_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => HomeScreen(),
    '/splash': (_) => SplashScreen(),
  };
}
