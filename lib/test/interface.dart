import 'package:flutter/material.dart';
import 'components/calculator_widget.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  String text = '0';
  String x1 = '';
  String x2 = '';

  void showPrint(String title) {
    if (text.length < 10) {
      if (x1 == text) {
        text = '';
      }
      if (text.isEmpty || text == '0') {
        text = title;
      } else {
        text += title;
      }
    }
    setState(() {});
  }

  void countAll(String title) {
    print(title);
    switch (title) {
      case '+':
        {
          if (x1.isEmpty) {
            x1 = text;
            text = '';
          } else {
            x2 = text;
            text = (int.parse(x1) + int.parse(x2)).toString();
            x1 = text;
            x2 = '';
          }
        }

        break;
      default:
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              width: double.maxFinite,
              child: Text(
                text,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorWidget(
                  buttontext: 'AC',
                  buttoncolor: 1,
                  textcolor: 1,
                  onPressed: (String value) {
                    setState(() {
                      text = "0";
                      x1 = '';
                      x2 = '';
                    });
                  },
                ),
                CalculatorWidget(
                  buttontext: '+/-',
                  buttoncolor: 1,
                  textcolor: 1,
                  onPressed: (String value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),
                CalculatorWidget(
                  buttontext: '%',
                  buttoncolor: 1,
                  textcolor: 1,
                  onPressed: (String value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),
                CalculatorWidget(
                  buttontext: '/',
                  buttoncolor: 2,
                  textcolor: 2,
                  onPressed: countAll,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorWidget(
                  buttontext: '7',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '8',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '9',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: 'x',
                  buttoncolor: 2,
                  textcolor: 2,
                  onPressed: countAll,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorWidget(
                  buttontext: '4',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '5',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '6',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '-',
                  buttoncolor: 2,
                  textcolor: 2,
                  onPressed: countAll,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorWidget(
                  buttontext: '1',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '2',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '3',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '+',
                  buttoncolor: 2,
                  textcolor: 2,
                  onPressed: countAll,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorWidget(
                  buttontext: '0',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: showPrint,
                ),
                CalculatorWidget(
                  buttontext: '.',
                  buttoncolor: 3,
                  textcolor: 2,
                  onPressed: (String value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),
                CalculatorWidget(
                  buttontext: '=',
                  buttoncolor: 2,
                  textcolor: 2,
                  onPressed: (String value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
