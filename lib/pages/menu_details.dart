import 'package:flutter/material.dart';
import 'package:food_menu_online/pages/menu_image_viewer.dart';
import 'package:food_menu_online/widgets/menuScreenAppBar.dart';
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
        slivers: [
          menuAppBar("maocai"),
          // Hero(tag: 1, child: ),
          // InkWell(

          //   onTap: () {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (e) => menuImageViewer()));
          //   },
          //   child: Hero(tag: 1, child: menuAppBar("maocai")),
          // ),
          menu_details_info(),
        ],
      ),
    );
  }
}
