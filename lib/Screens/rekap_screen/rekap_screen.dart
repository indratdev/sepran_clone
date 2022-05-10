import 'package:flutter/material.dart';
import 'package:sepran_clone/utils/styles.dart';

class RekapScreen extends StatefulWidget {
  RekapScreen({Key? key}) : super(key: key);

  @override
  State<RekapScreen> createState() => _RekapScreenState();
}

class _RekapScreenState extends State<RekapScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  bool isMonthly = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekap'),
        centerTitle: true,
        actions: (isMonthly)
            ? <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.build,
                    size: MediaQuery.of(context).size.width / 20,
                  ),
                )
              ]
            : null,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            // color: Colors.blue,
            height: MediaQuery.of(context).size.height / 13,
            child: TabBar(
              onTap: (value) {
                (value == 0) ? isMonthly = true : isMonthly = false;
                setState(() {});
                print('ismont : $isMonthly');
              },
              controller: _tabController,
              indicatorColor: Colors.blue,
              labelStyle: TextStyle(
                color: Colors.amber,
              ),
              tabs: const <Widget>[
                Tab(text: 'Bulanan'),
                Tab(text: 'Custom'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Text(
                        '01 Aprl 2022 - 30 aprl 2022',
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {}, // isi detail kl di tap
                            child: Container(
                              height: MediaQuery.of(context).size.height / 20,
                              child: ListTile(
                                leading: Text('Pengeluaran'),
                                trailing: Text('10.0000'),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    Center(child: Text('01 Aprl 2022 - 30 aprl 2022')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
