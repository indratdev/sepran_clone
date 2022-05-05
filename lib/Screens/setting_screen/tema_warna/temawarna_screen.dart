import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepran_clone/state_management/dark_bloc/darktheme_bloc.dart';
import 'package:sepran_clone/utils/dark_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemaWarnaSceen extends StatefulWidget {
  TemaWarnaSceen({Key? key}) : super(key: key);

  @override
  State<TemaWarnaSceen> createState() => _TemaWarnaSceenState();
}

class _TemaWarnaSceenState extends State<TemaWarnaSceen> {
  DarkThemePreference darkPref = DarkThemePreference();
  final DarkThemeProvider themeData = DarkThemeProvider();
  bool? _warna;

  @override
  void initState() {
    // _warna = darkPref.getTheme();/
    getThema();

    super.initState();
  }

  getThema() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? value = prefs.getBool('THEMESTATUS');

    if (value != null) {
      _warna = value;
    } else {
      _warna = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warna Tema'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Terang'),
            leading: Radio<bool>(
              value: false,
              groupValue: _warna,
              onChanged: (tema) {
                setState(() {
                  _warna = tema!;

                  BlocProvider.of<DarkthemeBloc>(context)
                      .add(ChangeThemeToDark(value: tema));
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Gelap'),
            leading: Radio<bool>(
                value: true,
                groupValue: _warna,
                onChanged: (tema) {
                  setState(() {
                    _warna = tema!;
                    BlocProvider.of<DarkthemeBloc>(context)
                        .add(ChangeThemeToDark(value: tema));
                  });
                }),
          )
        ],
      ),
    );
  }
}
