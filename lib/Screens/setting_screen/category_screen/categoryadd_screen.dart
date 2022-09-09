import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sepran_clone/Data/category_model.dart';
import 'package:sepran_clone/state_management/category_bloc/category_bloc.dart';
import 'package:sepran_clone/utils/customIcon.dart';

class CategoryAddScreen extends StatelessWidget {
  CategoryAddScreen({Key? key}) : super(key: key);

  List<CategoryMasterModel> datas = [];
  CategoryBloc category = CategoryBloc();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Kategori"),
      ),
      body: Column(children: <Widget>[
        ListTile(
          leading: const Text("Nama Kategori"),
          title: TextField(
            controller: categoryController,
          ),
        ),
        const SizedBox(height: 10),
        BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is SuccessReadAllCategoryMaster) {
              datas = state.result;
              print(">>>>>>>> datas : $datas");
              // print(">>># $result");
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 100,
                            // childAspectRatio: 10 / 8,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                    itemCount: datas.length,
                    itemBuilder: (BuildContext ctx, index) {
                      var iconss = (datas[index].name);
                      // print(">>>> icon: $iconss");
                      print(">>>>> :: ${CustomIcon.createDoc[iconss]}");

                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15)),
                        // child: Text("myProducts[index][name]"),
                        child:
                            // Text("data")
                            // Icon(Icons.abc),
                            Icon(CustomIcon.createDoc[iconss]),
                        // FontAwesomeIcons
                        // Icon(iconss),
                        // Icon(IconDataBrands(0xf641)),
                        // Icon(CustomIcon.createDoc[index]),
                      );
                    },
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
        ),
      ]),
    );
  }
}
