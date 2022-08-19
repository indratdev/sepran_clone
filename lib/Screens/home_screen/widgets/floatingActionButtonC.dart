// import 'package:flutter/material.dart';
// import 'package:hawk_fab_menu/hawk_fab_menu.dart';
// import 'package:sepran_clone/Screens/home_screen/transaksi_screen/transaksi_screen.dart';

// class floatingActionButtonHawk extends StatelessWidget {
//   String type;

//   floatingActionButtonHawk({
//     required this.type,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return HawkFabMenu(
//       // iconColor: Color(0xff4285F4),
//       backgroundColor: Color(0xff4285F4),
//       icon: AnimatedIcons.add_event,
//       body: Container(color: Colors.transparent),
//       items: [
//         HawkFabMenuItem(
//           label: (type == 'dataHarian') ? 'Pengeluaran' : 'Memberi',
//           ontap: () {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//             (type == 'dataHarian')
//                 ? Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           TransaksiScreen(type: 'Pengeluaran'),
//                     ))
//                 : Navigator.pushNamed(context, '/home/transaksi');
//           },
//           icon: (type == 'dataHarian')
//               ? Icon(Icons.badge)
//               : Icon(Icons.keyboard_double_arrow_down_outlined),
//           color: Colors.red,
//           labelColor: Colors.grey,
//         ),
//         HawkFabMenuItem(
//           label: (type == 'dataHarian') ? 'Pemasukan' : "Menerima",
//           ontap: () {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//             // masukin tap progress disini
//             // ScaffoldMessenger.of(context).showSnackBar(
//             //   const SnackBar(content: Text('Menu 3 selected')),
//             // );
//             (type == 'dataHarian')
//                 ? Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => TransaksiScreen(type: 'Pemasukan'),
//                     ))
//                 : Navigator.pushNamed(context, '/home/transaksi');
//             // Navigator.pushNamed(
//             //   context,
//             //   '/home/transaksi',
//             //   arguments: TransaksiScreen(type: 'Pemasukan'),
//             // );
//           },
//           icon: (type == 'dataHarian')
//               ? Icon(Icons.badge)
//               : Icon(Icons.keyboard_double_arrow_up_outlined),
//           color: Colors.orange,
//           labelColor: Colors.grey,
//         ),
//       ],
//     );
//   }
// }
