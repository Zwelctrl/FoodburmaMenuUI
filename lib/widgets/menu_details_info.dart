import 'package:flutter/material.dart';

class menu_details_info extends StatelessWidget {
  const menu_details_info({Key? key}) : super(key: key);

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
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("စျေးနှုန်း -",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.9),
                        fontWeight: FontWeight.w100,
                        fontSize: 19)),
                Text("၁၃၅၀၀",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.9),
                        fontWeight: FontWeight.w100,
                        fontSize: 19))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              child: Text(
                """
ချွမ်း​ဝေဝမ် မာလာ​မောက်ချိုက်အနှစ်ကို အရိုးပြုတ်ရည် (ဒါမှမဟုတ်) ​ရိုးရိုးရေထဲ ချိန်ဆ ထည့်ပြီး တည်ပါ။ 
ပွက်ပွက်ဆူ လာပြီ ဆိုရင်​တော့ ကိုယ်ကြိုက်နှစ်သက်ရာ အသား၊ အရွက်​တွေ ထည့်ပြုတ်လို့ ရပါပြီ​​။ 
ပါဝင် ပစ္စည်း​တွေ အကုန်ကျက်ပြီဆိုရင်​တော့ ​ပူပူ​နွေး​နွေး အဝ ​​လွေးလို့ ရပါပြီ​နော်။ 
Wow....လွယ်လွယ်​လေးပဲ​နော်။ ဟင်းချက် ပျင်းတဲ့ မာလာချစ်သူတို့အတွက်လည်း အို​ကေစိုပြည်​ပေါ့။""",
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
