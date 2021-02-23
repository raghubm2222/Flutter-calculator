import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Color color;
  final String title;

  const CButton({this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
          color: Color(0xff22252D), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          title ?? '',
          style: TextStyle(color: color ?? Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
