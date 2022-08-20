import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:food_menu_online/data/restaurantData.dart';
import 'package:food_menu_online/widgets/big_text.dart';

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
                BigText(text: "မာလာ မောက်ချိုက် ", color: Colors.black, size: 30, fontWeight: FontWeight.bold)
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              child: Html(data: htmlData),
            ),
          ),
        ],
      )),
    );
  }
}
