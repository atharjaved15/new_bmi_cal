import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'repeatedCodes.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body: Column(
        children: <Widget> [
          Expanded(child:
          Row(
            children: <Widget>[
              Expanded(child:
              MyContainer(
                colors: Color(0xFF1D1E33),
                cardWidget: IconTitle(
                  label: "MALE",
                  iconData: FontAwesomeIcons.male,
                ),
              )
              ),
              Expanded(child:MyContainer(colors: Color(0xFF1D1E33),cardWidget: IconTitle(
                label: 'FEMLAE',
                iconData: FontAwesomeIcons.female,
              ),)
             ),

            ],
          )),
          Expanded(child:
          MyContainer(colors: Color(0xFF1D1E33))),
          Expanded(child:
          Row(
            children: <Widget>[
              Expanded(child: MyContainer(colors: Color(0xFF1D1E33))),
              Expanded(child: MyContainer(colors: Color(0xFF1D1E33))),

            ],
          )),
        ],
      ),
    );
  }
}

