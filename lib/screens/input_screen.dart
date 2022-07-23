import 'package:bmi_calculator_flutter/calculator_brain.dart';
import 'package:bmi_calculator_flutter/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/input_card.dart';
import '../components/rounded_icon.dart';
import '../constants.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender = Gender.none;
  int personsHeight = 100;
  int personsWeight = 60;
  int personsAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: InputCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      childWidget: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      childWidget: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: InputCard(
                onPressed: () {},
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$personsHeight',
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(kSliderInActiveColor),
                        activeTrackColor: Colors.white,
                        overlayColor: const Color(kThumbOverlayColor),
                        thumbColor: const Color(kThumbActiveColor),
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 16.0,
                        ),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: personsHeight.toDouble(),
                        min: 50.0,
                        max: 250.0,
                        onChanged: (double newValue) {
                          setState(() {
                            personsHeight = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                color: kActiveCardColor,
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: InputCard(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            '$personsWeight',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    personsWeight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    personsWeight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            '$personsAge',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    personsAge--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    personsAge++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BottomButton(
                label: 'CALCULATE',
                onPressed: () {
                  var calculatedResult = CalculatorBrain(
                      weight: personsWeight, height: personsHeight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmi: calculatedResult.calculateBMI(),
                        result: calculatedResult.getResult(),
                        interpretation: calculatedResult.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
