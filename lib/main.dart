import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_menu_online/pages/loginPage.dart';
import 'package:food_menu_online/pages/menu_screen.dart';
import 'package:food_menu_online/pages/onBoardPage.dart';
import 'package:food_menu_online/pages/root_app.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodburmaApp(),
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
    Navigator.push(context,MaterialPageRoute(builder: (e) => MenuScreen()));
  }
}

