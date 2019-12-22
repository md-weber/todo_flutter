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
          return TaskTile(
              task: taskData.taskList[index],
              onChanged: (bool newValue) {
                taskData.toggleTask(index);
              });
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
