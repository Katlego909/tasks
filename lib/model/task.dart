import 'package:flutter/material.dart';

class Task {
  String? id;
  String? taskText;
  bool isDone;

  Task({required this.id, required this.taskText, this.isDone = false});

  static List<Task> taskList() {
    return [
      Task(id: "01", taskText: "Morning Exercise", isDone: true),
      Task(id: "02", taskText: "Buy Groceries", isDone: true),
      Task(id: "03", taskText: "Check Emails"),
      Task(id: "04", taskText: "Team Meeting"),
      Task(id: "05", taskText: "Build Flutter App", isDone: false),
      Task(id: "06", taskText: "Firebase Integration on App", isDone: true),
    ];
  }
}
