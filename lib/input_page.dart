import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'input_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int personsHeight = 100;

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
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
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
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: InputCard(
                      childWidget: const SizedBox(),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      childWidget: const SizedBox(),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InputCard(
                color: 0xFFC04D6A,
                childWidget: const SizedBox(),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
