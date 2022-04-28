import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:sepran_clone/Screens/home_screen/widgets/floatingActionButtonC.dart';

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
      lastDate: DateTime.now(),
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButtonHawk(),
        body: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              // mulai container tanggal
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
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
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), //
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Pemasukan'),
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
                          Text('Pengeluaran'),
                          Text(
                            '0.00',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Selisih'),
                          Text(
                            '0.00',
                            style: TextStyle(
                              color: Colors.black,
                            ),
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
                top: topContainerDetail + 60,
                left: leftRightContainerDetail + 10,
                right: leftRightContainerDetail + 10,
                bottom: 0,
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: 200,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.badge),
                        title: Text('title'),
                        subtitle: Text('Subtitle'),
                        iconColor: Colors.red,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('10.000'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      );
                    },
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
