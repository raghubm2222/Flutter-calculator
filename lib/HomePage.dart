import 'package:calculator/ButtonsContainer.dart';
import 'package:calculator/Constants.dart';
import 'package:calculator/ResultContainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentValue = '0';
  void changetheValue(String val) {
    if (val == 'AC') {
      setValue('0');
    } else if (numbersList.contains(int.parse(val))) {
      setValue(currentValue == '0' ? val : currentValue + val);
    } else if (operations.contains(val)) {
      print('Operation');
    }
  }

  void setValue(value) {
    setState(() {
      currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "CALCULATOR",
          style: TextStyle(
            color: whiteColor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
      backgroundColor: Color(0xff22252D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResultContainer(value: currentValue),
          ButtonsContainer(onpressed: changetheValue)
        ],
      ),
    );
  }
}
