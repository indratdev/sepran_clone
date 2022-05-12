import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:sepran_clone/Screens/home_screen/widgets/floatingActionButtonC.dart';
import 'package:sepran_clone/state_management/dataharian_bloc/dataharian_bloc.dart';
import 'package:sepran_clone/utils/infoDevices.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  DateTime? currentDate = DateTime.now();

//   var currentDate = DateTime.fromMicrosecondsSinceEpoch(miliseconds * 1000); //DateTime.fromMicrosecondsSinceEpoch(miliseconds * 1000);
// DateFormat(DateFormat.YEAR_MONTH_DAY, 'id').format(date.toUtc())
  DateTime? _selectedDate;

  double topContainerDetail = 50;
  double leftRightContainerDetail = 0;

  void _selectedDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    ).then((value) {
      //then usually do the future job
      if (value == null) {
        //if user tap cancel then this function will stop
        return;
      }
      _selectedDate = value;
    });
  }

  String getDateNow(DateTime? now) {
    initializeDateFormatting();
    if (now == null) {
      return '';
    }
    return DateFormat.yMMMMEEEEd('id').format(now);
  }

  Stream<QuerySnapshot> readData() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    var deviceid = '19c9695c6d738bdd'; //InfoDevices().getDeviceId;
    print('>>>>>>> deviceid : $deviceid');

    var data = FirebaseFirestore.instance //firestore
        .collection(deviceid)
        .where('transactionDate',
            isEqualTo: DateFormat('dd-MM-yyyy').format(currentDate!))
        .snapshots();

    return data;
    // .get();

    //     .then((event) {
    //   for (var doc in event.docs) {
    //     print("${doc.id} => ${doc.data()}");
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // var aaa = readData();
    // print(aaa);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButtonHawk(type: 'dataHarian'),
        body: Container(
          color: Theme.of(context).primaryColorDark,
          child: Stack(
            children: <Widget>[
              // mulai container tanggal
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .primaryColor, //Colors.blue, //Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          const SizedBox(),
                          TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _selectedDatePicker(context);
                            },
                            child: Text(
                              getDateNow(currentDate),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          //   ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // end container tanggal
              // mulai container detail
              Positioned(
                top: topContainerDetail,
                left: leftRightContainerDetail,
                right: leftRightContainerDetail,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .primaryColorDark, //Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), //
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Pemasukan',
                            // style: TextStyle(
                            //     color: Theme.of(context).primaryColorDark),
                          ),
                          Text(
                            '0.00',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Pengeluaran'),
                          Text(
                            '0.00',
                            // style: TextStyle(
                            //   color: Colors.black,
                            // ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Selisih'),
                          Text(
                            '0.00',
                            // style: TextStyle(
                            //   color: Colors.black,
                            // ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // end container detail
              // mulai container detail item
              Positioned(
                top: topContainerDetail + 55,
                left: leftRightContainerDetail + 10,
                right: leftRightContainerDetail + 10,
                bottom: 0,
                child: SizedBox(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        color: Theme.of(context).primaryColorDark,
                      ),
                      child: //Text('data')

                          StreamBuilder<QuerySnapshot>(
                        stream: readData(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text('Error');
                          }
                          if (snapshot.hasData) {
                            // CollectionReference transaksi = firestore.collection(await InfoDevices.getDeviceInfo());
                            return Column(
                              children: snapshot.data!.docs
                                  .map(
                                    (e) => ListTile(
                                        // title: e.data()['title'],
                                        title: Text('data')
                                        //Text((e.data() as dynamic)['title']),

                                        ),
                                  )
                                  .toList(),
                            );
                          } else {
                            return Text('Loading...');
                          }
                        },
                      )
                      //     BlocBuilder<DataharianBloc, DataharianState>(
                      //   builder: (context, state) {
                      //     if (state is LoadingDataHarian) {
                      //       return Center(
                      //           child: CircularProgressIndicator.adaptive());
                      //     }
                      //     if (state is ErrorDataHarianState) {
                      //       return Center(child: Text(state.errorDesc));
                      //     }
                      //     if (state is ReadDataHarianSuccess) {
                      //       var data = state.result;
                      //       // print(data.map((event) => print(event.docs.length.)));
                      //       return ListView.builder(
                      //         itemCount: 5,
                      //         itemBuilder: (context, index) {
                      //           return ListTile(
                      //             leading: Icon(Icons.badge),
                      //             title: Text('title'),
                      //             subtitle: Text('Subtitle'),
                      //             iconColor: Colors.red,
                      //             trailing: Row(
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: <Widget>[
                      //                 Text('10.000'),
                      //                 Icon(
                      //                   Icons.arrow_forward_ios,
                      //                   size: 10,
                      //                   color: Colors.grey,
                      //                 )
                      //               ],
                      //             ),
                      //           );
                      //         },
                      //       );
                      //     } else {
                      //       return Container(
                      //         child: Text('gagal'),
                      //       );
                      //     }
                      //   },
                      // ),
                      ),
                ),
              ),
              // end container detail item
            ],
          ),
        ),
      ),
    );
  }
}
