import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  BuildContext? context;
  static CustomDialog? _customDialog;

  static CustomDialog getInstance() {
    if (_customDialog == null) {
      _customDialog = CustomDialog();
    }
    return _customDialog!;
  }
}
