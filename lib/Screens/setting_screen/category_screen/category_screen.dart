import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryScreen extends StatelessWidget {
  bool isPengeluaran = true;
  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategori"),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: (isPengeluaran) ? Colors.red : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.lightBlue.shade900, spreadRadius: 3),
                    // ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Pengeluaran",
                        style: TextStyle(
                            color:
                                (isPengeluaran) ? Colors.white : Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0),
                      elevation: 0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: (isPengeluaran) ? Colors.white : Colors.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.lightBlue.shade900, spreadRadius: 3),
                    // ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Penerimaan",
                        style: TextStyle(
                            color:
                                (isPengeluaran) ? Colors.black : Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 8,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: const Text("title"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
