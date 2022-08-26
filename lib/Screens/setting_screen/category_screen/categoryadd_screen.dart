import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryAddScreen extends StatelessWidget {
  const CategoryAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kategori"),
      ),
      body: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.east),
          title: TextField(),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    // childAspectRatio: 10 / 8,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: FontAwesomeIcons.createDoc.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    // child: Text("myProducts[index][name]"),
                    child: Icon(FontAwesomeIcons.createDoc[index]),
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
