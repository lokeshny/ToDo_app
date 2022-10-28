import 'dart:developer';

import 'package:flutter/material.dart';

import '../model/task.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;

  AddTaskScreen(this.addTaskCallback, {super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTaskTitle ;

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: _textEditingController,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            ElevatedButton(
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                widget.addTaskCallback(_textEditingController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
