import 'package:flutter/material.dart';
import 'package:new_bmi_cal/constant.dart';


class MyContainer extends StatelessWidget {
  MyContainer({@required this.colors,this.cardWidget,this.onPressed});
  final Function onPressed;
  final Color colors;
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
class IconTitle extends StatelessWidget {
  IconTitle({@required this.label, this.iconData});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: kLabelStyle,
        )

      ],
    );
  }
}
class RoundIcon extends StatelessWidget {

  RoundIcon(@required this.iconData , @required this.onPress)
  final IconData iconData;
  final  Function onPress;
  @override
  Widget build(BuildContext context) {

    return RawMaterialButton();
  }
}
