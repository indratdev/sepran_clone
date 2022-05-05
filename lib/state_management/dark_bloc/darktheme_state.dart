part of 'darktheme_bloc.dart';

abstract class DarkthemeState extends Equatable {
  const DarkthemeState();

  @override
  List<Object> get props => [];
}

class DarkthemeInitial extends DarkthemeState {
  bool toDark;

  DarkthemeInitial({
    this.toDark = false,
  });

  @override
  List<Object> get props => [toDark];
}

class ChangeThemaDarkState extends DarkthemeState {
  bool theme;

  ChangeThemaDarkState({
    required this.theme,
  });

  @override
  List<Object> get props => [theme];

  bool get themeValue => theme;
}
