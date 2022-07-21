import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                children: const [
                  InputCard(),
                  InputCard(),
                ],
              ),
            ),
            const InputCard(flex: 2),
            Expanded(
              flex: 2,
              child: Row(
                children: const [
                  InputCard(),
                  InputCard(),
                ],
              ),
            ),
            const InputCard(color: 0xFFC04D6A),
          ],
        ),
      ),
    );
  }
}


class InputCard extends StatelessWidget {
  final int flex;
  final int color;
  const InputCard({Key? key, this.flex = 1, this.color = 0xFF323244}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
