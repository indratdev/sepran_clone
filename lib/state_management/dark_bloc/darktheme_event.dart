part of 'darktheme_bloc.dart';

abstract class DarkthemeEvent extends Equatable {
  const DarkthemeEvent();

  @override
  List<Object> get props => [];
}

class InitialChangeTheme extends DarkthemeEvent {}

class ChangeThemeToDark extends DarkthemeEvent {
  bool value;

  ChangeThemeToDark({
    required this.value,
  });
}
