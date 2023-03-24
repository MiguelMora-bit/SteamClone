import 'package:flutter/material.dart';

class CustomInputs {
  static InputDecoration searchInputDecoration(
      {required String hint,
      required IconData icon,
      required Function onPress}) {
    return InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      hintText: hint,
      suffixIcon: IconButton(
        icon: Icon(icon),
        onPressed: () => onPress(),
      ),
      prefixIconConstraints: const BoxConstraints(
        minWidth: 15,
        minHeight: 15,
      ),
    );
  }
}
