import 'package:flutter/material.dart';

const greenColor = Color(0xff00f79c);
const pinkColor = Colors.pink;
const backgroundColor = Color(0xff22252D);
const whiteColor = Colors.white;

class BD {
  final String title;
  final Color color;
  const BD({this.title, this.color});
}

const List<BD> buttons = [
  const BD(color: greenColor, title: 'AC'),
  const BD(color: greenColor, title: '+/-'),
  const BD(color: greenColor, title: '⌫'),
  const BD(color: pinkColor, title: '÷'),
  const BD(color: whiteColor, title: '7'),
  const BD(color: whiteColor, title: '8'),
  const BD(color: whiteColor, title: '9'),
  const BD(color: pinkColor, title: 'x'),
  const BD(color: whiteColor, title: '4'),
  const BD(color: whiteColor, title: '5'),
  const BD(color: whiteColor, title: '6'),
  const BD(color: pinkColor, title: '-'),
  const BD(color: whiteColor, title: '1'),
  const BD(color: whiteColor, title: '2'),
  const BD(color: whiteColor, title: '3'),
  const BD(color: pinkColor, title: '+'),
  const BD(color: whiteColor, title: '√'),
  const BD(color: whiteColor, title: '0'),
  const BD(color: whiteColor, title: '.'),
  const BD(color: pinkColor, title: '='),
];

const numbersList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
const operations = ['÷', 'x', '-', '+', '='];
