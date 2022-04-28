import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

class floatingActionButtonHawk extends StatelessWidget {
  const floatingActionButtonHawk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HawkFabMenu(
      icon: AnimatedIcons.add_event,
      body: Container(),
      items: [
        HawkFabMenuItem(
          label: 'Pengeluaran',
          ontap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            // masukin tap progress disini
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Menu 3 selected')),
            // );
          },
          icon: Icon(Icons.badge),
          color: Colors.red,
          labelColor: Colors.grey,
        ),
        HawkFabMenuItem(
          label: 'Pendapatan',
          ontap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            // masukin tap progress disini
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Menu 3 selected')),
            // );
          },
          icon: Icon(Icons.badge),
          color: Colors.green,
          labelColor: Colors.grey,
        ),
      ],
    );
  }
}
