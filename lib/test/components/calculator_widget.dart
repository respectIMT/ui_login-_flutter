import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget(
      {super.key,
      required this.buttontext,
      required this.buttoncolor,
      required this.textcolor,
      required this.onPressed});
  final String buttontext;
  final int buttoncolor;
  final int textcolor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    if (buttontext == '0') {
      return Bounce(
        onPressed: () => onPressed(buttontext),
        duration: const Duration(milliseconds: 500),
        child: Container(
          height: 80,
          width: 160 + (MediaQuery.of(context).size.width - 320) / 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: buttoncolor == 1
                ? Colors.grey
                : buttoncolor == 2
                    ? Colors.amber.shade700
                    : Colors.grey.shade800,
          ),
          child: Text(
            buttontext,
            style: TextStyle(
              fontSize: 35,
              color: textcolor == 1 ? Colors.black : Colors.white,
            ),
          ),
        ),
      );
    }

    return Bounce(
      onPressed: () => onPressed(buttontext),
      duration: const Duration(milliseconds: 150),
      child: Container(
        height: 80,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttoncolor == 1
              ? Colors.grey
              : buttoncolor == 2
                  ? Colors.amber.shade700
                  : Colors.grey.shade800,
        ),
        child: Text(
          buttontext,
          style: TextStyle(
            fontSize: 35,
            color: textcolor == 1 ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
