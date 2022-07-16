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
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 8.0,
        right: 8.0,
        bottom: 8.0,
      ),
      color: Color(0xff282C35),
      child: GridView.builder(
        shrinkWrap: true,
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
