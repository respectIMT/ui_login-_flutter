import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
    required this.ontap,
    required this.onclick,
  });
  final Function ontap;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: () => onclick(),
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
                  Image.asset('assets/icons/google.png', height: 25),
                  Text(
                    "  Google",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: InkWell(
            onTap: () => ontap("salom qiymat qaytarildi"),
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
                  Image.asset('assets/icons/facebook.png', height: 25),
                  Text(
                    "  Facebook",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
