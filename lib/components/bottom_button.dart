import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_card.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const BottomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputCard(
      color: kBottomButtonColor,
      childWidget: Center(
        child: Text(
          label,
          style: kLargeButtonTextStyle,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
