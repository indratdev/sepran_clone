import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepran_clone/state_management/pages_bloc/pages_bloc.dart';
import 'package:sepran_clone/utils/routes.dart';
import 'package:sepran_clone/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes().getRoutes,
        initialRoute: '/splash',
        theme: Styles.themeData(false, context),
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
