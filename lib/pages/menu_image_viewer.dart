import 'package:flutter/material.dart';

class menuImageViewer extends StatelessWidget {
  const menuImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/maocai.jpg"))),
          ),
        ),
      ),
    );
  }
}
