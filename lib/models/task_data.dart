import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskListData extends ChangeNotifier {
  List<Task> taskList = [];

  void addNewTask(Task newTask) {
    taskList.add(newTask);
    notifyListeners();
  }

  void toggleTask(int index) {
    taskList[index].toggleDone();
    notifyListeners();
  }

  int get taskCount => taskList.length;
}
