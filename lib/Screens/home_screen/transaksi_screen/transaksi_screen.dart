import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sepran_clone/utils/infoDevices.dart';
import 'package:sepran_clone/utils/styles.dart';

class TransaksiScreen extends StatelessWidget {
  String type;

  TransaksiScreen({
    Key? key,
    required this.type,
  }) : super(key: key);

  TextEditingController nominalController = TextEditingController();
  TextEditingController judulController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController opsionalController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference transaksi = firestore.collection('transaction');

    print('type : $type');
    return Scaffold(
      appBar: AppBar(
        title: (type == 'Pengeluaran')
            ? const Text('Tambah Pengeluaran')
            : const Text('Tambah Pemasukan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: dateController,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2999, 8),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      dateController.text =
                          DateFormat('dd-MM-yyyy').format(selectedDate);
                      print('selected date: $selectedDate');
                    }
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: Styles.borderRadiusInput),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Pilih Tanggal Transaksi",
                  fillColor: Colors.white70,
                ),
              ),
              const SizedBox(height: 10),
              inputTextfield(
                inputController: nominalController,
                hintText: 'Nominal',
                icon: const Icon(FontAwesomeIcons.calculator),
              ),
              const SizedBox(height: 10),
              inputTextfield(
                inputController: judulController,
                hintText: 'Ketik disini untuk judul baru',
                icon: const Icon(FontAwesomeIcons.microphone),
              ),
              const SizedBox(height: 10),
              inputTextfield(
                inputController: kategoriController,
                hintText: 'Ketik disini untuk kategori baru',
                icon: const Icon(FontAwesomeIcons.microphone),
              ),
              const SizedBox(height: 10),
              inputTextfield(
                inputController: opsionalController,
                hintText: 'Keterangan (optional)',
                icon: const Icon(FontAwesomeIcons.microphone),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () async {
                    transaksi
                        .doc(await InfoDevices.getDeviceInfo() +
                            '_' +
                            DateFormat('yyyy-mm-dd_hhmmss')
                                .format(DateTime.now())
                                .toString())
                        .set({
                      'transactionDate': dateController.text,
                      'amount': nominalController.text,
                      'title': judulController.text,
                      'category': kategoriController.text,
                      'descriptionOpsional': opsionalController.text
                    });

                    dateController.text = '';
                    nominalController.text = '';
                    judulController.text = '';
                    kategoriController.text = '';
                    opsionalController.text = '';
                  },
                  child: const Text('Simpan'),
                ),
              ),
            ],
          ),
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
