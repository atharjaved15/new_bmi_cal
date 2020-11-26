import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_cal/constant.dart';
import 'repeatedCodes.dart';

const activeColor =  Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);

enum Gender{
  male,
  female,
}
Gender selectedGender;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  int sliderHeight = 180;
  /*void updateColor(Gender gender){
    if(gender == Gender.male){
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
    if(gender == Gender.female){
      maleColor = deactiveColor;
      femaleColor = activeColor;
    }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(child:
          Row(
            children: <Widget>[
              Expanded(child:
               MyContainer(
                 onPressed: (){
                   setState(() {
                     selectedGender = Gender.male;
                   });
                 },
                  colors: selectedGender==Gender.male?activeColor:deactiveColor,
                  cardWidget: IconTitle(
                    label: "MALE",
                    iconData: FontAwesomeIcons.male,
                  ),
                ),

              ),
              Expanded(child:
                  MyContainer(
                    onPressed: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colors: selectedGender==Gender.female
                        ?activeColor
                        :deactiveColor,
                    cardWidget: IconTitle(
                  label: 'FEMLAE',
                  iconData: FontAwesomeIcons.female,
                ),),

             ),

            ],
          )),
          Expanded(child:
          MyContainer(
            colors: Color(0xFF1D1E33),
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT' , style: kLabelStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(sliderHeight.toString(), style: kNumberStyle),
                    Text('cm' ,style: kLabelStyle,),
                  ],
                ),
                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  } ,

                ),
              ],
            ),

          )),
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

