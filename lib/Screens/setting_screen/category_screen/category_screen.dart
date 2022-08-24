import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sepran_clone/state_management/category_bloc/category_bloc.dart';

import '../../../Data/category_model.dart';

class CategoryScreen extends StatelessWidget {
  bool isPenerimaan = true;
  List<CategoryModel> datas = [];

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
                    color: (isPenerimaan) ? Colors.red : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CategoryBloc>(context)
                          .add(ViewCategoryEvent(IsIncome: 1));
                    },
                    child: Text("Penerimaan",
                        style: TextStyle(
                            color:
                                (isPenerimaan) ? Colors.white : Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0),
                      elevation: 0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: (isPenerimaan) ? Colors.white : Colors.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CategoryBloc>(context)
                          .add(ViewCategoryEvent(IsIncome: 0));
                    },
                    child: Text("Pengeluaraan",
                        style: TextStyle(
                            color:
                                (isPenerimaan) ? Colors.black : Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BlocConsumer<CategoryBloc, CategoryState>(
            listener: (context, state) {
              if (state is CategorySuccess) {
                datas = state.category;
                isPenerimaan = (state.isIncome == 1) ? true : false;
              }
            },
            builder: (context, state) {
              print(state);
              if (state is CategoryLoading) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
              if (state is CategoryFailure) {
                return Center(child: Text(state.errorMessage.toString()));
              }

              if (state is CategorySuccess) {
                datas = state.category;
                isPenerimaan = (state.isIncome == 1) ? true : false;
                return Flexible(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: datas.length,
                    itemBuilder: (context, index) {
                      var icons = datas[index].iconName as IconData;
                      print(icons);
                      return ListTile(
                        leading: Icon(icons),
                        title: Text(datas[index].name),
                      );
                    },
                  ),
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    );
  }
}
