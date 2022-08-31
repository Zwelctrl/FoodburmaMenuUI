import 'package:flutter/material.dart';
import 'package:food_menu_online/widgets/custom_text_form_field.dart';

class CustomExpansionEXP extends StatefulWidget {
  CustomExpansionEXP({Key? key}) : super(key: key);

  @override
  State<CustomExpansionEXP> createState() => _CustomExpansionEXPState();
}

class _CustomExpansionEXPState extends State<CustomExpansionEXP> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // collapsedBackgroundColor: Colors.black,
      // collapsedTextColor: Colors.black,
      textColor: Colors.black,
      title: Text("Business One"),
      children: [
        SizedBox(
          height: 10,
        ),
        textformfield("စားသောက်ဆိုင် အမည်"),
        SizedBox(
          height: 15,
        ),
        textformfield("စားသောက်ဆိုင် လိပ်စာ"),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: Text("Type"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(value: true, groupValue: true, onChanged: (e) {}),
              Text("Hotel"),
              Radio(value: false, groupValue: false, onChanged: (e) {}),
              Text("Restaurant"),
            ],
          ),
        ),
      ],
    );
  }
}
