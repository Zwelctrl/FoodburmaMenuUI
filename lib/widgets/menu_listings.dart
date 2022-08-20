import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MenuListItem extends StatelessWidget {
  final String IMG;
  final String MenuName;
  final String MenuDescription;

  const MenuListItem(
    this.IMG,
    this.MenuName,
    this.MenuDescription, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed("/menu/menu_detail");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/$IMG.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MenuName,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Text(
                    MenuDescription,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        overflow: TextOverflow.fade),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: 10,
    );
  }
}


// Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(builder: (e) => MenuDetailsPage()),
//                     );
//                   },
//                   child: Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.orange,
//                       ),
//                       child: Icon(
//                         Icons.question_mark,
//                         color: Colors.white,
//                         size: 25,
//                       )),
//                 )
//               ],
//             )