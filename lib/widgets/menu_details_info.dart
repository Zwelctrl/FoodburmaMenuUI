import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:food_menu_online/data/restaurantData.dart';

class Menu_Details_Info extends StatelessWidget {
  const Menu_Details_Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "မာလာ မောက်ချိုက် ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("စျေးနှုန်း - ၁၃၅၀၀",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.9),
                        fontWeight: FontWeight.w300,
                        fontSize: 17)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              child: Html(data: htmlData),
            ),
          ),
        ],
      )),
    );
  }
}
