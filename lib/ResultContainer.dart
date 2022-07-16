import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  final String value;
  const ResultContainer({Key key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: Align(
        child: Text(
          value,
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
