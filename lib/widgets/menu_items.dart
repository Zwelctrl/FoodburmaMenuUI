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
  return Padding(
    padding: const EdgeInsets.only(top: 7),
    child: TabBarView(controller: tabcontroller, children: [
      MenuListItem(
        "biryani",
        "ကြက်သားဒံပေါက်",
        "တစ်ပွဲ ၆၅၀၀",
      ),
      MenuListItem("maocai", "မောက်ချိုက်", "တစ်ပွဲ ၃၅၀၀"),
      MenuListItem("dumpling", "ဖက်ထုပ်", "တစ်ပွဲ ၂၅၀၀"),
      MenuListItem("breakfast", "အနောက်တိုင်း မနက်စာ", "တစ်ပွဲ ၃၀၀၀"),
      MenuListItem("sushi", "Sushi", "တစ်ပွဲ ၆၅၀၀"),
      MenuListItem('bubbletea', 'Tealeaves boba', 'တစ်ပွဲ ၁၉၀၀၀')
    ]),
  );
}
