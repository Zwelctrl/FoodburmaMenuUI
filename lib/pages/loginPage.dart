import 'package:flutter/material.dart';
import 'package:food_menu_online/pages/menu_screen.dart';
import 'package:food_menu_online/theme/colors.dart';
import 'package:food_menu_online/theme/padding.dart';

class LoginPageExp extends StatelessWidget {
  const LoginPageExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool eyeIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
      padding: EdgeInsets.all(mainPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FoodBurma Owners Login",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please input phone number",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Phone Number",
                    ),
                    cursorColor: primary,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please input your Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          obscureText: eyeIcon,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Password",
                          ),
                          cursorColor: primary,
                        ),
                      ),
                      IconButton(
                          splashRadius: 20,
                          onPressed: () {
                            eyeIcon = !eyeIcon;
                            setState(() {});
                          },
                          icon: eyeIcon
                              ? Icon(
                                  Icons.visibility,
                                  size: 18,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  size: 18,
                                ))
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Does not have an Account yet?",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MenuScreen()));
                    },
                    child: Text(
                      "Create One",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
