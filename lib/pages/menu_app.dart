import 'package:flutter/material.dart';
import 'package:food_menu_online/widgets/custom_text_form_field.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 40,
                    ),
                    SizedBox(height: 10),
                    Text("ဓာတ်ပုံထည့်ရန်")
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            textformfield("ဟင်းပွဲ အမည် "),
            SizedBox(height: 15),
            textformfield("စျေးနှုန်း "),
            SizedBox(
              height: 15,
            ),
            textformfield("ဟင်းချက်နည်းထည့်ရန်"),
            ListTile(
              title: Text("အမျိုးအစားရွေးရန်"),
              trailing: DropdownButton(
            borderRadius: BorderRadius.circular(30),
            dropdownColor: Colors.lime,
            menuMaxHeight: 300,
            isDense: false,
            icon: Icon(Icons.favorite),
            hint: Text(
              'Select Your Country',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            value: val,
            items: [
              DropdownMenuItem(
                onTap: () {
                  print('On Tap');
                },
                enabled: true,
                child: Text('A Country'),
                value: 'a',
              ),
              DropdownMenuItem(
                enabled: false,
                child: Text('B Country'),
                value: 'b',
              ),
              DropdownMenuItem(
                child: Text('C Country'),
                value: 'c',
              ),
            ],
            onChanged: (String? e) {
              val = e!;
              setState(() {});
            }),
            )
          ],
        ),
      ),
    );
  }

  String? val;
  // List<DropdownMenuItem<String>> DropDownMenuItemsList =

  List<String> menuItems = [
    'Asian Food',
    'Western Food',
    'Chinese Food',
    'Drinks',
  ];
}
