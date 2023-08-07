// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60,
      width: double.maxFinite,
      padding: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
            hintText: name, label: Text(name), border: InputBorder.none),
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
    );
  }
}
