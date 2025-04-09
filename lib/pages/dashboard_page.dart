import 'package:flutter/material.dart';

import '../constants/dashboard_item_data.dart';
import '../models/dashboard_item.dart';
import '../widgets/app_drawer.dart';

class DashboardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    dashboardItems.sort((a, b) => a.title.compareTo(b.title));

    return Scaffold(
      drawer: AppDrawer(items: dashboardItems),
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, color: Colors.black),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Last Update: 7 Aug 2023",
                style: TextStyle(color: Colors.grey, fontSize: 14)),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: dashboardItems.length,
                itemBuilder: (context, index) {
                  return DashboardTile(item: dashboardItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final DashboardItem item;

  DashboardTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 3,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item.page),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(item.icon, size: 48, color: Colors.deepPurple),
            Container(
              width: 60,
              height: 60,
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 12),
            Text(
              item.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
