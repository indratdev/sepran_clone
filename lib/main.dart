import 'package:flutter/material.dart';
import 'package:sepran_clone/Screens/splash_screen.dart';
import 'package:sepran_clone/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes().getRoutes,
      initialRoute: '/splash',
    );
  }
}
