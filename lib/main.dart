import 'package:calculator/calculations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

int res = 0;
var a = 0;
var sum = 0;

class _CalculatorState extends State<Calculator> {
  String addtext(int index) {
    if (index == 10) {
      return '+';
    } else if (index == 11) {
      return '-';
    } else if (index == 12) {
      return '=';
    } else if (index == 13) {
      return '%';
    } else if (index == 14) {
      return 'R';
    } else {
      return "$index";
    }
  }

  Calculations obj = Calculations();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 450,
                width: 450,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          res = obj.calc(index);
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 4, color: Colors.red)),
                        child: Center(
                          child: Text(
                            addtext(index),
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("RESULT : ", style: TextStyle(fontSize: 40)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$res",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
