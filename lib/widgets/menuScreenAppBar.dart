import 'package:flutter/material.dart';
import 'package:food_menu_online/data/restaurantData.dart';

class menuAppBar extends StatefulWidget {
  final String IMG;
  menuAppBar(this.IMG, {Key? key}) : super(key: key);

  @override
  State<menuAppBar> createState() => _menuAppBarState();
}

class _menuAppBarState extends State<menuAppBar> {
  bool bookMarkTrig = true;
  @override
  Widget build(BuildContext context) {
    String imageName = widget.IMG;
    return SliverAppBar(
      bottom: PreferredSize(
          child: Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ),
          preferredSize: Size.fromHeight(20)),
      backgroundColor: Colors.orange,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              bookMarkTrig = !bookMarkTrig;
            });
          },
          icon: Icon(
            bookMarkTrig ? Icons.bookmark_add : Icons.bookmark,
            color: Colors.white,
          ),
        )
      ],
      expandedHeight: 230,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/$imageName.jpg"),
            ),
          ),
          child: Container(
            color: Colors.black.withOpacity(.2),
          ),
        ),
      ),
    );
  }
}
