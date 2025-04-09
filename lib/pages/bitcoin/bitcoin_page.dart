import 'package:flutter/material.dart';
import 'price_screen.dart';

class BitcoinPage extends StatelessWidget {
  const BitcoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      child: PriceScreen(),
    );
  }
}