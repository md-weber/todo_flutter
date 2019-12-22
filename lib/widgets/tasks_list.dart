import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> taskList;

  const TasksList({
    Key key,
    this.taskList = const [],
  }) : super(key: key);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            task: widget.taskList[index],
            onChanged: (bool newValue) {
              setState(() {
                widget.taskList[index].toggleDone();
              });
            });
      },
      itemCount: widget.taskList.length,
    );
  }
}
