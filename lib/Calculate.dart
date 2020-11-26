import 'dart:math';


class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  double bmi;

  String CalculateBMI(){
  bmi = weight / pow(height/100 , 2);
  return bmi.toStringAsFixed(1);
  }

  String getResult () {
    if(bmi >18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation()
  {
    if(bmi>25){
      return 'You have a higher than normal body weight. Try to Exercise';
    }
    else if(bmi>18){
      return 'You have a normal body weight. Good Job !';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }

}