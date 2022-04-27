import 'package:flutter/material.dart';
import 'package:sepran_clone/utils/menus.dart';

class HomeScreen extends StatelessWidget {
  final menu = Menus();
  int _index = 0;
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: menu.getBottomMenu(menu.items),
        currentIndex: _index,
        selectedItemColor: Colors.blue,
        onTap: (index) {},
      ),
    );
  }
}
