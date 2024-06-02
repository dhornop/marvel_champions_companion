//El StateProvider es como un proveedor de un estado.
//Una pequeña pieza de información de estado de nuestra aplicación.
//  ¿Cuál es el estado seleccionado?
//  ¿Cual es el valor de una variable numérica?
//  ¿Cuál es el estado de una clase?
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:marvel_champions/config/theme/app_theme.dart";

//! OPCIÓN A

//Listado de colores inmutable (Nunca va a cambiar)
final colorListProvider = Provider((ref) => colorList);

//Modo light / dark
//final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//Color seleccionado
//final selectedColorProvider = StateProvider<int>((ref) => 0);

//! OPCIÓN B

//Objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Controller o Notifier: Esta es la clase que se va a encargar de controlar el estado (AppTheme)
class ThemeNotifier extends StateNotifier<AppTheme> {
  //Creamos una instancia de AppTheme
  //STATE o Estado = a una nueva instancia de AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
