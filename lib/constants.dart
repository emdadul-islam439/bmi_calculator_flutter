import 'package:flutter/material.dart';

const kLabelColor = 0xFF8D8E98;
const kActiveCardColor = 0xFF1D1E33;
const kInActiveCardColor = 0xFF111328;
const kBottomContainerColor = 0xFFEB1555;
const kSliderActiveColor = 0xFFEB1555;
const kThumbActiveColor = 0xFFEB1555;
const kThumbOverlayColor = 0x29EB1555;
const kSliderInActiveColor = 0xFF8D8E98;
const kRoundIconButtonColor = 0xFF4C4F5E;
const kResultTextColor = 0xFF24D876;

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(kLabelColor),
);
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(kResultTextColor),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

enum
Gender { male, female, none }