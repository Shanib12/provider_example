import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  String _name = "shanib";
  Color _buttonColor = const Color.fromARGB(255, 3, 44, 24);

  String get name => _name;
  Color get buttonColor => _buttonColor;

  void changename() {
    if (_name == "shanib") {
      _name = "The great man";
      _buttonColor = Colors.red; // Change button color to red
    } else {
      _name = "shanib";
      _buttonColor = const Color.fromARGB(255, 7, 110, 60); // Change button color back to blue
    }
    notifyListeners();
  }
}
