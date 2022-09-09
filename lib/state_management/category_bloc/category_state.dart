part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

abstract class CategoryFailureGeneral extends CategoryState {
  String errorMessage;

  CategoryFailureGeneral({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryFailure extends CategoryFailureGeneral {
  CategoryFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
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

// getcategory icon
class LoadingReadAllCategoryMaster extends CategoryState {}

class FailureReadAllCategoryMaster extends CategoryFailureGeneral {
  FailureReadAllCategoryMaster({required String errorMessage})
      : super(errorMessage: errorMessage);
}

class SuccessReadAllCategoryMaster extends CategoryState {
  List<CategoryMasterModel> result;

  SuccessReadAllCategoryMaster({
    required this.result,
  });

  @override
  List<Object> get props => [result];
}
