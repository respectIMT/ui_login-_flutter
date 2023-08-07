// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 40, top: 20),
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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "  Full name",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.5),
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          1,
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "  Email address",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        255,
                        255,
                        255,
                        1,
                      ),
                      border: Border.all(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "  Create Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.5),
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          1,
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "  Current Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.5),
                        borderRadius: BorderRadius.circular(35),
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          1,
                        )),
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(35),
                              color: Color.fromRGBO(
                                255,
                                255,
                                255,
                                1,
                              )),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/google.png',
                                  height: 25),
                              Text(
                                "  Google",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          // width: double.maxFinite,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(35),
                              color: Color.fromRGBO(
                                255,
                                255,
                                255,
                                1,
                              )),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/facebook.png',
                                  height: 25),
                              Text(
                                "  Facebook",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
