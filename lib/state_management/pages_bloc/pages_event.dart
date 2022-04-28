part of 'pages_bloc.dart';

abstract class PagesEvent extends Equatable {
  const PagesEvent();

  @override
  List<Object> get props => [];
}

class ChangeBottomPage extends PagesEvent {
  int indexPage;

  ChangeBottomPage({
    required this.indexPage,
  });
}
