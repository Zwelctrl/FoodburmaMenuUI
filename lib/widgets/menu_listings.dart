import 'package:flutter/material.dart';
import 'package:food_menu_online/pages/menu_details.dart';

class menuListItem extends StatelessWidget {
  final String IMG;
  final String MenuName;
  final String MenuDescription;

  const menuListItem(
    this.IMG,
    this.MenuName,
    this.MenuDescription, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Column(
      children: List.generate(
        10,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 15, bottom: 10),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/$IMG.jpg"),
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
                                    fontSize: 20),
                              ),
                              Text(
                                MenuDescription,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.4),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    overflow: TextOverflow.fade),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
        
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (e) => MenuDetailsPage()),
                              );
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                                child: Icon(
                                  Icons.question_mark,
                                  color: Colors.white,
                                  size: 25,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    ));
    ;
  }
}
