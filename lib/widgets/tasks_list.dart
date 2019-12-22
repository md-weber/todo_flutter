import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/main.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = Provider.of<TaskListData>(context).taskList;

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            task: taskList[index],
            onChanged: (bool newValue) {
              setState(() {
                taskList[index].toggleDone();
              });
            });
      },
      itemCount: taskList.length,
    );
  }
}
