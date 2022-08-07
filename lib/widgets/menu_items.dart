import 'package:flutter/material.dart';
import 'package:food_menu_online/data/restaurantData.dart';
import 'package:food_menu_online/widgets/menu_listings.dart';

Widget menuTabBar(tabController) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        TabBar(
            indicatorWeight: 2,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            physics: BouncingScrollPhysics(),
            controller: tabController,
            isScrollable: true,
            tabs: List.generate(
                offlineDatas.itemNames.length,
                (i) => Tab(
                      child: Text(
                        itemNames[i],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ))),
      ],
    ),
  );
}

Widget menuTabBarView(tabcontroller) {
  return TabBarView(controller: tabcontroller, children: [
    menuListItem(
      "biryani",
      "ကြက်သားဒံပေါက်",
      "အနံ့မွှေးအောင်ချက်ထားပါတယ်",
    ),
    menuListItem("maocai", "မောက်ချိုက်", "မာလာမောက်ချိုက်ဖြစ်ပါတယ်"),
    menuListItem("dumpling", "ဖက်ထုပ်", "ကြက်သား၊ ၀က်သား ရပါတယ်"),
    menuListItem("breakfast", "အနောက်တိုင်း မနက်စာ", "တစ်ပွဲ ၃၀၀၀"),
    menuListItem("sushi", "Sushi", "ပင်လယ်စာ အစုံ"),
    menuListItem('bubbletea', 'Tealeaves boba', 'Calories Free')
  ]);
}
