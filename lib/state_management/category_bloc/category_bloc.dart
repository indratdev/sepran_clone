import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sepran_clone/Resources/sqldatabases.dart';

import '../../Data/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    final dbprovider = SqlDatabase.instance;

    on<ViewCategoryEvent>((event, emit) async {
      try {
        emit(CategoryLoading());
        var result = await dbprovider.readCategory(event.IsIncome);
        // print(result);
        emit(CategorySuccess(category: result, isIncome: event.IsIncome));
      } catch (e) {
        print(e);
        emit(CategoryFailure(errorMessage: "GAGAL"));
      }
    });

    on<GetAllCategoryIcon>((event, emit) {
      
    });
  }
}
