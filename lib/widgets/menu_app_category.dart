import 'package:flutter/material.dart';

class MenuAppDropDown extends StatefulWidget {
  MenuAppDropDown({Key? key}) : super(key: key);

  @override
  State<MenuAppDropDown> createState() => _MenuAppDropDownState();
}

class _MenuAppDropDownState extends State<MenuAppDropDown> {
  String? val;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        menuMaxHeight: 300,
        isDense: false,
        hint: Text(
          'အမျိုးအစား ရွေးရန်',
        ),
        value: val,
        items: menuItems
            .map((value) => DropdownMenuItem(value: value, child: Text(value)))
            .toList(),
        onChanged: (e) {
          setState(() {
            val = e!;
          });
        });
  }

  List<String> menuItems = [
    'Chinese Food',
    'Asian Food',
    'Dessert',
    'Drinks',
    'Western Food'
  ];
}
