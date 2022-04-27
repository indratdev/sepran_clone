part of 'pages_bloc.dart';

abstract class PagesState extends Equatable {
  const PagesState();

  @override
  List<Object> get props => [];
}

class PagesInitial extends PagesState {}

class ChangeBottomPageState extends PagesState {
  int page;

  ChangeBottomPageState({
    required this.page,
  });

  @override
  List<Object> get props => [page];
}
