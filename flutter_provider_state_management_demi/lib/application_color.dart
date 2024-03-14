import 'package:flutter/material.dart';

/// A class that represents the application color and provides methods to change it.
class ApplicationColor with ChangeNotifier {
  bool _isLightblue = true;

  /// Returns whether the current color is light blue.
  bool get isLightBlue => _isLightblue;

  /// Sets the color to light blue if [value] is true, otherwise sets it to amber.
  set isLightBlue(bool value) {
    _isLightblue = value;
    notifyListeners();
  }

  /// Returns the current color.
  Color get color => (_isLightblue) ? Colors.lightBlue : Colors.amber;
}
