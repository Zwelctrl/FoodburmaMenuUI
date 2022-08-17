import 'package:flutter/material.dart';
import 'package:food_menu_online/data/restaurantData.dart';
import 'package:food_menu_online/widgets/menu_screen_app_bar.dart';
import 'package:food_menu_online/widgets/menu_screen_body_wid.dart';

import '../widgets/menu_items.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: offlineDatas.itemNames.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => addTab(),
      // ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MenuAppBar('restaurant'),
                getBody(),
                menuTabBar(_tabController),
              ],
          body: menuTabBarView(_tabController)),
    );
  }

  // void addTab() {
  //   itemNames.add([
  //     "Top Menus",
  //     ["ကင်းမွန် မာဆလာ", "ခရု ပုစွန်ဆော့", "ပင်လယ်စာ အစုံဗန်း"]
  //   ]);

  //   setState(() {
  //     _tabController = TabController(length: itemNames.length, vsync: this);
  //   });
  // }
}
