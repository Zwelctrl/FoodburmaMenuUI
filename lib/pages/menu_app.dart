import 'package:flutter/material.dart';
import 'package:food_menu_online/pages/menu_app_body.dart';
import 'package:food_menu_online/widgets/custom_text_form_field.dart';
import 'package:food_menu_online/widgets/menu_app_category.dart';
import 'package:food_menu_online/widgets/menu_app_img_input.dart';
import 'package:get/get.dart';

class MenuApp extends StatefulWidget {
  MenuApp({Key? key}) : super(key: key);

  @override
  State<MenuApp> createState() => _MenuAppState();
}

class _MenuAppState extends State<MenuApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  "Menu App age",
                  style: Get.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Menu_App_Body(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange,
            ),
            margin: EdgeInsets.only(bottom: 15),
            height: 50,
            child: InkWell(
              onTap: () => print('tap on close'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  // List<DropdownMenuItem<String>> DropDownMenuItemsList =

  List<String> menuItems = [
    'Asian Food',
    'Western Food',
    'Chinese Food',
    'Drinks',
  ];
}
