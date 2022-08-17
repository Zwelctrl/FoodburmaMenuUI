import 'package:flutter/material.dart';
import 'package:food_menu_online/widgets/menu_screen_app_bar.dart';
import 'package:food_menu_online/widgets/menu_details_info.dart';

class MenuDetailsPage extends StatefulWidget {
  MenuDetailsPage({Key? key}) : super(key: key);

  @override
  State<MenuDetailsPage> createState() => _MenuDetailsPageState();
}

class _MenuDetailsPageState extends State<MenuDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          MenuAppBar("maocai"),
          Menu_Details_Info(),
        ],
      ),
    );
  }
}
