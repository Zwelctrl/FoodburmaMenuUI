import 'package:flutter/material.dart';
import 'package:food_menu_online/widgets/custom_text_form_field.dart';
import 'package:food_menu_online/widgets/menu_app_category.dart';
import 'package:food_menu_online/widgets/menu_app_img_input.dart';

class Menu_App_Body extends StatefulWidget {
  Menu_App_Body({Key? key}) : super(key: key);

  @override
  State<Menu_App_Body> createState() => _Menu_App_BodyState();
}

class _Menu_App_BodyState extends State<Menu_App_Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        MenuAppBottomSheet(),
        SizedBox(height: 15),
        textformfield("ဟင်းပွဲ အမည် "),
        SizedBox(height: 15),
        textformfield("စျေးနှုန်း ", type: TextInputType.phone, suffix: "MMK"),
        SizedBox(
          height: 15,
        ),
        textformfield("ဟင်းချက်နည်းထည့်ရန်", maxlines: 3),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            "အမျိုးအစားရွေးရန်",
            style: TextStyle(fontSize: 15),
          ),
          trailing: MenuAppDropDown(),
        ),
        SizedBox(
          height: 15,
        ),
        
      ],
    );
  }
}
