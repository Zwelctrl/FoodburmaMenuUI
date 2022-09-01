import 'package:flutter/material.dart';

Widget textformfield(String textToUse,
    {TextInputType? type, int? maxlines, String? suffix}) {
  return TextFormField(
    maxLines: maxlines,
    keyboardType: type,
    decoration: InputDecoration(
      suffix: suffix == null
          ? null
          : Text(
              "$suffix",
              style: TextStyle(color: Colors.green),
            ),
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
