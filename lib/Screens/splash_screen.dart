import 'package:flutter/material.dart';
import 'package:sepran_clone/Resources/sqldatabases.dart';
import 'package:sqflite/sqflite.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SqlDatabase databaseinstanse = SqlDatabase.instance;

  @override
  void initState() {
    databaseinstanse.database;

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Sepran')),
    );
  }
}
