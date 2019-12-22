import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListData>(
      create: (_) => TaskListData(),
      child: MaterialApp(
        home: Container(
          child: TasksScreen(),
        ),
      ),
    );
  }
}

class TaskListData extends ChangeNotifier {
  List<Task> taskList = [];

  void addNewTask(Task newTask) {
    taskList.add(newTask);
    notifyListeners();
  }
}
