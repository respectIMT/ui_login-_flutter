// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/bottom_widget.dart';
import 'components/text_widget.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
         
        child: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/sparkle.png', height: 35),
                    Text(
                      "Q-learn",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.maxFinite,
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.maxFinite,
                  child: Text(
                    "Already have an acoount?. Sign in",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                flex: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextWidget(name: "  Full name"),
                    TextWidget(name: "  Email address"),
                    TextWidget(name: "  Create Password"),
                    TextWidget(name: "  Current Password"),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: double.maxFinite,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "  Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      Text(
                        "Or sign up with",
                        style: TextStyle(fontSize: 20),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    BottomWidget(
                      onclick: () {
                        print("on Click");
                      },
                      ontap: (String value) {
                        print(value);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
