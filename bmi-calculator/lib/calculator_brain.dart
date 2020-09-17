import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weigth});

  final int height;
  final int weigth;

  double _bmi;

  String calculateBMI(){
    _bmi = weigth / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi>=25){
      return "Overweight";
    }
    else if(_bmi >18.5){
      return "Normal";
    }
    else {
      return "Underweight";
    }
  }

  String getInterpritation(){
    if(_bmi>=25){
      return "You have a higher than normal body weigth. Try to exercice more.";
    }
    else if(_bmi >18.5){
      return "You have a normal body weight. Good job!";
    }
    else {
      return "You have lower than normal body weight. You can it a bit more.";
    }
  }
}