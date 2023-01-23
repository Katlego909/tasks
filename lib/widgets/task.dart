import 'package:flutter/material.dart';
import 'package:tasks_app/constants/colors.dart';
import 'package:tasks_app/model/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final onTaskChanged;
  final onDeleteItem;

  const TaskItem(
      {super.key,
      required this.task,
      required this.onTaskChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTaskChanged(task);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        tileColor: Colors.white,
        leading: Icon(
          task.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: toBlue,
        ),
        title: Text(
          task.taskText!,
          style: TextStyle(
            fontSize: 16,
            color: toBlack,
            decoration: task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: toRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(task.id);
            },
          ),
        ),
      ),
    );
  }
}
