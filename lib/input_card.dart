import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final int flex;
  final int color;
  final Widget childWidget;
  final VoidCallback onPressed;

  const InputCard({
    Key? key,
    this.flex = 1,
    this.color = 0xFF323244,
    required this.onPressed,
    required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childWidget,
      ),
    );
  }
}
