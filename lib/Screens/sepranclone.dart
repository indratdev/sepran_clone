import 'package:flutter/material.dart';
import 'package:sepran_clone/state_management/pages_bloc/pages_bloc.dart';
import 'package:sepran_clone/utils/menus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SepranClone extends StatelessWidget {
  SepranClone({Key? key}) : super(key: key);
  final menu = Menus();

  @override
  Widget build(BuildContext context) {
    int _index = 0;

    return BlocBuilder<PagesBloc, PagesState>(
      builder: (context, state) {
        if (state is ChangeBottomPageState) {
          _index = state.page;
        }

        return Scaffold(
          body: menu.allScreen.elementAt(_index),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: menu.getBottomMenu(menu.items),
            currentIndex: _index,
            selectedItemColor: Colors.blue,
            onTap: (index) {
              context.read<PagesBloc>().add(ChangeBottomPage(indexPage: index));
            },
          ),
        );
      },
    );
  }
}
