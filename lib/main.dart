// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepran_clone/state_management/category_bloc/category_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'utils/routes.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CategoryBloc()..add(ViewCategoryEvent(IsIncome: 1)),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes().getRoutes,
        initialRoute: '/splash',
        // theme: Styles.themeData(themeData.getDarkTheme, context),
      ),
    );
  }
}
