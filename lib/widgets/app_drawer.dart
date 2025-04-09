import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart'; // or wherever your DashboardPage is
import '../models/dashboard_item.dart';

class AppDrawer extends StatelessWidget {
  final List<DashboardItem> items;

  const AppDrawer({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
                    (route) => false,
              );
            },
          ),
          ...items.map((item) => ListTile(
            leading: Image.asset(item.imagePath, width: 24, height: 24),
            title: Text(item.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.page),
              );
            },
          )),
        ],
      ),
    );
  }
}
