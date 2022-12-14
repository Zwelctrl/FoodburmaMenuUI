import 'package:flutter/material.dart';
import 'package:food_menu_online/pages/on_board_page.dart';

class RootApp extends StatefulWidget {
  RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardPage(),
    );
  }
}