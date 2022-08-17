import 'package:flutter/material.dart';

Widget textformfield(String textToUse, {TextInputType? type}) {
  return TextFormField(
    keyboardType: type,
    decoration: InputDecoration(
      isDense: true,

      filled: true,
      fillColor: Colors.grey.shade200,
      border: OutlineInputBorder(),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      labelText: textToUse,

      labelStyle: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 14,
      ),
      // alignLabelWithHint: true,
    ),
  );
}
