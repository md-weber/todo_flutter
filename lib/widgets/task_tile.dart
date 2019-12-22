import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onChanged;
  final Function onLongPress;

  const TaskTile({Key key, this.task, this.onChanged, this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
/*      onTap: () {
        onChanged(false);
      },*/
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
      ),
    );
  }
}
