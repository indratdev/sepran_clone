import 'package:flutter/material.dart';

enum WarnaTema { terang, gelap }

class TemaWarnaSceen extends StatelessWidget {
  TemaWarnaSceen({Key? key}) : super(key: key);

  WarnaTema? _warna = WarnaTema.terang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Warna Tema',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Terang'),
            leading: Radio<WarnaTema>(
              value: WarnaTema.terang,
              groupValue: _warna,
              onChanged: (WarnaTema? tema) {
                _warna = tema;
              },
            ),
          ),
          ListTile(
            title: Text('Gelap'),
            leading: Radio<WarnaTema>(
                value: WarnaTema.gelap,
                groupValue: _warna,
                onChanged: (WarnaTema? tema) {
                  _warna = tema;
                }),
          )
        ],
      ),
    );
  }
}
