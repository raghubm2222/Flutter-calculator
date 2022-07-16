import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'ButtonsContainer.dart';
import 'Constants.dart';
import 'ResultContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentValue = '0';
  void changetheValue(String val) {
    if (val == 'AC') {
      setValue('0');
    } else if (val == '⌫') {
      setValue(currentValue.substring(0, currentValue.length - 1));
    } else if (val == '+/-') {
      final isNeagtiveValue = currentValue.startsWith('-');
      if (isNeagtiveValue) {
        setValue(currentValue.substring(1));
      } else {
        setValue('-' + currentValue);
      }
    } else if (val == '√') {
      setValue(math.sqrt(double.parse(currentValue)).toString());
    } else if (val == '=') {
      evaluate();
    } else if (operations.contains(val)) {
      if (currentValue == '0') return;
      var lastValue = currentValue[currentValue.length - 1];
      bool isEndsWithOperator = operations.contains(lastValue);
      if (isEndsWithOperator) {
        setValue(currentValue.substring(0, currentValue.length - 1) + val);
      } else {
        setValue(currentValue += val);
      }
    } else {
      setValue(currentValue == '0' ? val : currentValue += val);
    }
  }

  void setValue(value) {
    setState(() {
      currentValue = value;
    });
  }

  void evaluate() {
    log(currentValue);
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
        children: [
          Spacer(),
          ResultContainer(value: currentValue),
          ButtonsContainer(onpressed: changetheValue)
        ],
      ),
    );
  }
}
