import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkboxCallback;
  final Function() longpressCallback;
  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
        // onChanged: togglecheckboxstate,
      ),
    );
  }
}
