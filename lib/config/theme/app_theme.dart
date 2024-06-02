import "package:flutter/material.dart";

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
      : assert(selectedColor >= 0, "El selectedColor debe ser igual o mayor que cero"),
        assert(selectedColor < colorList.length, "El selectedColor debe ser menor o igual que ${colorList.length - 1}");

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );

  //Un método que regresa una nueva instancia de AppTheme que es una copia de la anterior con solo los campos indicados modificados
  AppTheme copyWith({int? selectedColor, bool? isDarkmode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkmode: isDarkmode ?? this.isDarkmode,
      );
}
