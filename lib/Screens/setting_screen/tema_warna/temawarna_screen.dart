import 'package:flutter/material.dart';

class TemaWarnaSceen extends StatelessWidget {
  const TemaWarnaSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warna Tema',
        ),
        centerTitle: true,
      ),
    );
  }
}
