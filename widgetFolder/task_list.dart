import 'package:flutter/material.dart';
import 'package:todo_list_app/ui/add_task_screen.dart';
import 'package:todo_list_app/widgetFolder/task_tile.dart';

import '../model/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks =[
    Task(name:"Buy milk", isDone: false),
    Task(name:"Buy car", isDone: false),
    Task(name:"Buy house", isDone: false),
    Task(name:"Buy road", isDone: false),

  
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
