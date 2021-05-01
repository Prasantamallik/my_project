import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxcallback;
  final Function longPressCallBack;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxcallback,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
