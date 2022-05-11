import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sepran_clone/utils/infoDevices.dart';
import 'package:sepran_clone/utils/styles.dart';

class TransaksiScreen extends StatelessWidget {
  TransaksiScreen({
    Key? key,
    this.type = 'Pengeluaran',
  }) : super(key: key);

  final String type;

  TextEditingController nominalController = TextEditingController();
  TextEditingController judulController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController opsionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference transaksi = firestore.collection('transaction');

    print('type : $type');
    return Scaffold(
      appBar: AppBar(
        title: (type == 'Pengeluaran')
            ? Text('Tambah Pengeluaran')
            : Text('Tambah Pemasukan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2999, 8));
              },
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border:
                    OutlineInputBorder(borderRadius: Styles.borderRadiusInput),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Type in your text",
                fillColor: Colors.white70,
              ),
            ),
            const SizedBox(height: 10),
            inputTextfield(
              inputController: nominalController,
              hintText: 'Nominal',
              icon: Icon(FontAwesomeIcons.calculator),
            ),
            const SizedBox(height: 10),
            inputTextfield(
              inputController: judulController,
              hintText: 'Ketik disini untuk judul baru',
              icon: Icon(FontAwesomeIcons.microphone),
            ),
            const SizedBox(height: 10),
            inputTextfield(
              inputController: kategoriController,
              hintText: 'Ketik disini untuk kategori baru',
              icon: Icon(FontAwesomeIcons.microphone),
            ),
            const SizedBox(height: 10),
            inputTextfield(
              inputController: opsionalController,
              hintText: 'Kategori (optional)',
              icon: Icon(FontAwesomeIcons.microphone),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  transaksi.add({
                    'transactionDate': '2022-05-10',
                    'amount': nominalController.text,
                    'title': judulController.text,
                  });
                  nominalController.text = '';
                  judulController.text = '';
                },
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class inputTextfield extends StatelessWidget {
  const inputTextfield({
    Key? key,
    required this.inputController,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  final TextEditingController inputController;
  final String hintText;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        suffixIcon: icon,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        border: OutlineInputBorder(borderRadius: Styles.borderRadiusInput),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),
        hintText: hintText,
        fillColor: Colors.white70,
      ),
    );
  }
}
