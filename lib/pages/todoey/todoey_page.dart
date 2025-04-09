import 'package:flutter/material.dart';
import 'package:mini_simple_app/pages/todoey/tasks_screen.dart';
import 'package:provider/provider.dart';

import '../../models/task_data.dart';

class TodoeyPage extends StatelessWidget {
  const TodoeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: TasksScreen(),
    );
  }
}