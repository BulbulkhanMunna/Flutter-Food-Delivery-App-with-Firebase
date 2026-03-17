import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_model.dart';

class ThemeProvider with ChangeNotifier {
  

  // Starts with light theme as default
  ThemeData _themeData = lightMode;

// Getter: other widgets can READ current theme
  ThemeData get themeData => _themeData;


// Helper: check if dark mode is active
  bool get isDarkMode => _themeData == darkMode;


// Setter: other widgets can CHANGE theme
  set themeData (ThemeData themeData){
    _themeData = themeData;

    notifyListeners(); // TELLS ALL WIDGETS TO REBUILD WITH NEW THEME
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData= lightMode;
    }
  }
}