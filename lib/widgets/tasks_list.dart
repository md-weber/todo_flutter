import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var task = taskData.tasks[index];

          return TaskTile(
            task: task,
            onChanged: (bool newValue) {
              taskData.toggleTask(task);
            },
            onLongPress: () {
              taskData.removeTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
