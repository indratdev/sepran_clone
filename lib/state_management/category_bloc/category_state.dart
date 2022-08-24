part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryFailure extends CategoryState {
  String errorMessage;

  CategoryFailure({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class CategorySuccess extends CategoryState {
  List<CategoryModel> category;
  int isIncome;

  CategorySuccess({
    required this.category,
    required this.isIncome,
  });

  @override
  List<Object> get props => [category, isIncome];
}
