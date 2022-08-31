import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_menu_online/pages/business_owner_form.dart';
import 'package:food_menu_online/pages/menu_app.dart';
import 'package:food_menu_online/pages/menu_details.dart';
import 'package:food_menu_online/pages/menu_screen.dart';
import 'package:food_menu_online/pages/on_board_page.dart';
import 'package:food_menu_online/pages/root_app.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top,
  ]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,  
      // home: FoodburmaApp(),
      initialRoute: "/menu_app",
      getPages: [
        GetPage(name: "/", page: () => FoodburmaApp()),
        GetPage(name: "/menu", page: () => MenuScreen()),
        GetPage(name: "/menu/menu_detail", page: () => MenuDetailsPage()),
        GetPage(name: "/business_owner_form", page: () => BusinessOwnerForm()),
        GetPage(name: "/menu_app", page: () => MenuApp()),
      ],
      // onUnknownRoute: (RouteSettings settings) {
      //   return MaterialPageRoute<void>(
      //     settings: settings,
      //     builder: (_) => UnKnownPage(),
      //   );
      // },
      // unknownRoute: GetPage(name: "/notFound", page: ()=>UnKnownPage()),
    );
  }
}

class FoodburmaApp extends StatefulWidget {
  FoodburmaApp({Key? key}) : super(key: key);

  @override
  State<FoodburmaApp> createState() => _FoodburmaAppState();
}

class _FoodburmaAppState extends State<FoodburmaApp> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), openMenuScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardPage(),
    );
  }

  void openMenuScreen() {
    Get.toNamed("/menu");
  }
}
