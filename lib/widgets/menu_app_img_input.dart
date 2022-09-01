import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuAppBottomSheet extends StatelessWidget {
  const MenuAppBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        showModalBottomSheet(
            // elevation: 10,
            context: context,
            shape: RoundedRectangleBorder(),
            builder: (context) => Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.camera,
                                size: 20,
                              ),
                              SizedBox(height: 10),
                              Text("Capture Now")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.image,
                                size: 20,
                              ),
                              SizedBox(height: 10),
                              Text("Gallery")
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ));
      },
      child: Container(
        width: 400,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.4),
          borderRadius: BorderRadius.circular(10),
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
    );
  }
}
