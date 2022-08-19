// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepran_clone/Resources/repository.dart';
import 'package:sepran_clone/state_management/dark_bloc/darktheme_bloc.dart';
import 'package:sepran_clone/state_management/pages_bloc/pages_bloc.dart';
import 'package:sepran_clone/utils/dark_theme.dart';
import 'package:sepran_clone/utils/infoDevices.dart';
import 'package:sepran_clone/utils/routes.dart';
import 'package:sepran_clone/utils/styles.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MyApp());

  // InfoDevices().checkDeviceInfo();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DarkThemeProvider themeData = DarkThemeProvider();

  // late bool _theme;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes().getRoutes,
      initialRoute: '/splash',
      // theme: Styles.themeData(themeData.getDarkTheme, context),
    );
  }
}
