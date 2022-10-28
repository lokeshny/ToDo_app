import 'package:flutter/material.dart';
import 'package:todo_list_app/ui/add_task_screen.dart';
import 'package:todo_list_app/widgetFolder/task_tile.dart';

import '../model/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(isChecked:widget.tasks[index].isDone, taskTitle: widget.tasks[index].name,
      checkboxCallback:
          (checkboxState){
        setState(() {
          widget.tasks[index].toggleDone();
        });
      }
      );
    },itemCount: widget.tasks.length,

    );
  }
}
