import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskListData extends ChangeNotifier {
  List<Task> _taskList = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }

  void addNewTask(String newTaskTitle) {
    _taskList.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount => _taskList.length;

  Task getTask(int index) => _taskList[index];

  void removeTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
