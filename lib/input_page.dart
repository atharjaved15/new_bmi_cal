import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.male,
                      size: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Male' ,
                      style: TextStyle(fontSize: 25,color: Colors.white),
                    )

                  ],
                ),
              )
              ),
              Expanded(child:MyContainer(colors: Color(0xFF1D1E33),)
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

class MyContainer extends StatelessWidget {
  MyContainer({@required this.colors,this.cardWidget});
  final Color colors;
  final Widget cardWidget;
    @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}