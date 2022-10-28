import 'package:flutter/material.dart';
import 'package:todo_list_app/model/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: "Buy milk", isDone: false),
    Task(name: "Buy car", isDone: false),
    Task(name: "Buy house", isDone: false),
    Task(name: "Buy road", isDone: false),
  ];

}