import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  DateTime? currentDate = DateTime.now();
//   var currentDate = DateTime.fromMicrosecondsSinceEpoch(miliseconds * 1000); //DateTime.fromMicrosecondsSinceEpoch(miliseconds * 1000);
// DateFormat(DateFormat.YEAR_MONTH_DAY, 'id').format(date.toUtc())
  DateTime? _selectedDate;

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
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            // mulai container tanggal
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
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
            // end container tanggal
            // mulai container detail
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 12,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
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
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('test'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
