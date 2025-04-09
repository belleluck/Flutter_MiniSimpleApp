import 'package:flutter/material.dart';
import 'input_page.dart';

class BMICalculatorPage extends StatelessWidget {
  const BMICalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      child: InputPage(),
    );
  }
}