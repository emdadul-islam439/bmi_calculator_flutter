import 'package:flutter/material.dart';
import 'input_page.dart';

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
        primaryColor: const Color(0xFF1D2136),
      ),
      home: const InputPage(),
    );
  }
}

