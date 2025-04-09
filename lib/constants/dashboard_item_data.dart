import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';
import '../pages/bitcoin/bitcoin_page.dart';
import '../pages/bmi/bmi_calculator_page.dart';
import '../pages/clima/clima_page.dart';
import '../pages/destini/destini_page.dart';
import '../pages/dicee/dicee_page.dart';
import '../pages/flash_chat/flash_chat_page.dart';
import '../pages/magic_8_ball/magic_8_ball_page.dart';
import '../pages/mi_card/mi_card_page.dart';
import '../pages/quizzler/quizzler_page.dart';
import '../pages/todoey/todoey_page.dart';
import '../pages/xylophone/xylophone_page.dart';

// final List<DashboardItem> items = [
//   DashboardItem("Bitcoin", Icons.info_outline, BitcoinPage()),
//   DashboardItem("BMI Calculator", Icons.work_outline, BMICalculatorPage()),
//   DashboardItem("Clima", Icons.check_circle_outline, ClimaPage()),
//   DashboardItem("Destini", Icons.picture_as_pdf_outlined, DestiniPage()),
//   DashboardItem("Dicee", Icons.article_outlined, DiceePage()),
//   DashboardItem("Flash Chat", Icons.quiz_outlined, FlashChat()),
//   DashboardItem("Magic 8 Ball", Icons.quiz_outlined, Magic8BallPage()),
//   DashboardItem("MiCard", Icons.quiz_outlined, MiCardPage()),
//   DashboardItem("Quizzler", Icons.quiz_outlined, QuizzlerPage()),
//   DashboardItem("Todoey", Icons.quiz_outlined, TodoeyPage()),
//   DashboardItem("Xylophone", Icons.quiz_outlined, XylophonePage()),
// ];

final List<DashboardItem> dashboardItems = [
  DashboardItem("Coin Ticker",    'images/bitcoin.png', BitcoinPage(), Colors.orange),
  DashboardItem("BMI Calculator", 'images/bmi.png', BMICalculatorPage(), Colors.green),
  DashboardItem("Clima",          'images/clima.png', ClimaPage(), Colors.blue),
  DashboardItem("Destini",        'images/destini.png', DestiniPage(), Colors.deepPurple),
  DashboardItem("Dicee",          'images/dice.png', DiceePage(), Colors.red),
  DashboardItem("Flash Chat",     'images/flash.png', FlashChat(), Colors.teal),
  DashboardItem("Magic 8 Ball",   'images/magic8ball.png', Magic8BallPage(), Colors.purple),
  DashboardItem("MiCard",         'images/micard.png', MiCardPage(), Colors.cyan),
  DashboardItem("Quizzler",       'images/quiz.png', QuizzlerPage(), Colors.indigo),
  DashboardItem("Todoey",         'images/todo.png', TodoeyPage(), Colors.lightBlue),
  DashboardItem("Xylophone",      'images/xylophone.png', XylophonePage(), Colors.amber),
];