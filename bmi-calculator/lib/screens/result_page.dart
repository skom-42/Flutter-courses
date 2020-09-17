import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
ResultPage({@required this.bmiResult, @required this.interpritation, @required this.resultText});

  final bmiResult;
  final resultText;
  final interpritation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "YOUR RESULT",
                    style: kTitleTextStyle,
                  ),
              ),
              ),
              Expanded(
                flex: 6,
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpritation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  colour: kActiveCardColor,
                ),
              ),
              Container(
                child: BottomButton(
                  buttonTitle: "RE-CALCULATE",
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              )
            ],
          )
    );

  }
}
