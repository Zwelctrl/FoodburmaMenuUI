import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:food_menu_online/widgets/custom_text_form_field.dart';
import 'package:get/route_manager.dart';

class BusinessOwnerForm extends StatelessWidget {
  const BusinessOwnerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Business Owner ",
              style: Get.textTheme.bodyMedium,
            ),
            Text(
              "အကောင့်ဖွင့်ရန်",
              style: Get.textTheme.bodyMedium,
            ),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
          child: ListView(
            children:[
              textformfield("ပိုင်ရှင်အမည် ထည့်ရန်",
                        type: TextInputType.phone),
            ]
          )
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed("/menu");
            },
            child: Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: Text(
                "Submit",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}


/**
 * Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: textformfield("အီးမေလ်းထည့်ရန်"),
                )
 */