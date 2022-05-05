import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sepran_clone/utils/dark_theme.dart';

part 'darktheme_event.dart';
part 'darktheme_state.dart';

class DarkthemeBloc extends Bloc<DarkthemeEvent, DarkthemeState> {
  DarkthemeBloc() : super(DarkthemeInitial()) {
    final DarkThemeProvider themeData = DarkThemeProvider();

    on<ChangeThemeToDark>((event, emit) {
      var result = event.value;

      var _thema = themeData.setDarkTheme = result;

      // set preferecenya
      // (result == WarnaTema.light)
      //     ? darkPrefs.setDartTheme(true)
      //     : darkPrefs.setDartTheme(false);

      // if (result == false) {
      //   darkPrefs.setDartTheme(false);
      //   _thema = false;
      // } else {
      //   darkPrefs.setDartTheme(true);
      //   _thema = true;
      // }

      // print('ganti warna');
      // print(' print --> ${themeData.getDarkTheme}');
      emit(ChangeThemaDarkState(theme: (_thema)));
    });

    on<InitialChangeTheme>((event, emit) async {
      themeData.setDarkTheme = await themeData.darkThemePreference.getTheme();
      final result = themeData.getDarkTheme;
      emit(DarkthemeInitial(toDark: result));
    });
  }
}
