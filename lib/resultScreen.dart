import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_bmi_cal/constant.dart';
import 'package:new_bmi_cal/input_page.dart';
import 'package:new_bmi_cal/repeatedCodes.dart';

class  ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: Center(
              child: Text('Your Result' , style: TextStyle(fontSize: 40.0 , fontWeight: FontWeight.bold),),
            ),
          )),
          Expanded(
            flex: 5,
              child: MyContainer(
                  colors: activeColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Normal',
                    style: rColor,),
                    Text('18.3', style: kbodyStyle, ),
                    Text('BMI is Low'),
                  ],
                ),
              ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Re-Calculate' , textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold),),

                  ],
                )
            ),
          )


        ],
      )
    );
  }
}
