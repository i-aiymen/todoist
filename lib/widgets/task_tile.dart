import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({required this.taskTitle, required this.checkboxCallback});
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decoration: widget.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.isChecked,
        onChanged: (newValue) {
          setState(() {
            widget.isChecked = newValue!;
          });
        },
      ),
    );
  }
}
