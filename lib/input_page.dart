import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'input_card.dart';

const activeCardColor = 0xFF1D1E33;
const inActiveCardColor = 0xFF111328;
const bottomContainerColor = 0xFFEB1555;

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

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
                          ? activeCardColor
                          : inActiveCardColor,
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
                          ? activeCardColor
                          : inActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: InputCard(
                childWidget: const SizedBox(),
                onPressed: () {},
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
