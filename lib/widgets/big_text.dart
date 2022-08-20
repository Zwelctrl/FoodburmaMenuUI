import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight fontWeight;

  BigText({Key? key, required this.text, required this.color,required this.size,required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
