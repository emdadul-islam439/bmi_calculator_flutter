import 'package:flutter/material.dart';
import 'screens/input_screen.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatefulWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  State<BMICalculatorApp> createState() => _BMICalculatorAppState();
}

class _BMICalculatorAppState extends State<BMICalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputScreen(),
    );
  }
}
