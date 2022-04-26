import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              semanticLabel: 'Data Harian',
            ),
            label: 'Data Harian',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              semanticLabel: 'Hutang',
            ),
            label: 'Hutang',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grade,
              semanticLabel: 'Rekap',
            ),
            label: 'Rekap',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              semanticLabel: 'Setting',
            ),
            label: 'Setting',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {},
      ),
    );
  }
}
