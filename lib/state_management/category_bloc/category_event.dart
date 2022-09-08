part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class ViewCategoryEvent extends CategoryEvent {
  int IsIncome;

  ViewCategoryEvent({
    required this.IsIncome,
  });
}

class GetAllCategoryIcon extends CategoryEvent {}
