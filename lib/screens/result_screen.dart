import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../components/input_card.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;

  const ResultScreen({
    Key? key,
    required this.result,
    required this.bmi,
    required this.interpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Your Result',
                    textAlign: TextAlign.start,
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: InputCard(
                  onPressed: () {},
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmi,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                  color: kActiveCardColor,
                ),
              ),
              Expanded(
                child: BottomButton(
                  label: 'RE-CALCULATE',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
