import 'package:calculator/Constants.dart';
import 'package:calculator/CustomButton.dart';
import 'package:flutter/material.dart';

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({
    this.onpressed,
    Key key,
  }) : super(key: key);
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff282C35),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onpressed(buttons[index].title);
            },
            child: CButton(
              title: buttons[index].title,
              color: buttons[index].color,
            ),
          );
        },
      ),
    );
  }
}
