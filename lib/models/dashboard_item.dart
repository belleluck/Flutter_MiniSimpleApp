import 'package:flutter/material.dart';

class DashboardItem {
  final String title;
  // final IconData icon;
  final String imagePath;
  final Widget page;
  final Color backgroundColor;

  // DashboardItem(this.title, this.icon, this.page);
  DashboardItem(this.title, this.imagePath, this.page, this.backgroundColor);
}
