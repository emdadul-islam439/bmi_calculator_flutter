import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'input_card.dart';

const activeCardColor = 0xFF1D1E33;
const inActiveCardColor = 0xFF111328;
const bottomContainerColor = 0xFFEB1555;
const maleButtonTapped = 1;
const femaleButtonTapped = 2;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int maleCardColor = inActiveCardColor;
  int femaleCardColor = inActiveCardColor;

  void changeColor(int latestTap) {
    setState(() {
      if (latestTap == maleButtonTapped) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }
    });
  }

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
                    child: GestureDetector(
                      onTap: () {
                        changeColor(maleButtonTapped);
                      },
                      child: InputCard(
                        childWidget: const IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                        color: maleCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        changeColor(femaleCardColor);
                      },
                      child: InputCard(
                        childWidget: const IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                        color: femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: InputCard(
                childWidget: SizedBox(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: const [
                  Expanded(
                    child: InputCard(
                      childWidget: SizedBox(),
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      childWidget: SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: InputCard(
                color: 0xFFC04D6A,
                childWidget: SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
