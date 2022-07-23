import 'package:bmi_calculator_flutter/bottom_button.dart';
import 'package:flutter/material.dart';
import 'input_card.dart';
import 'constants.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
                    children: const [
                      Text(
                        'HEIGHT',
                        style: kResultTextStyle,
                      ),
                      Text(
                        '18.3',
                        style: kBMITextStyle,
                      ),
                      Text(
                        'Your BMI is quite low, you should eat more!',
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
