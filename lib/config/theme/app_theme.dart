import 'package:flutter/material.dart';


const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorTheme=[
_customColor,
Colors.blue,
Colors.teal,
Colors.green,
Colors.yellow,
Colors.orange,
Colors.pink,
Colors.black,
Colors.red
];
class AppTheme{
  final int selectedColor;
  
  AppTheme({ this.selectedColor=0}): assert(selectedColor>=0 && selectedColor<_colorTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor], 
     // brightness: Brightness.dark, para dejar el thema oscuro
    );
  }
}