import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState){
    setState(() {
      isChecked = checkboxState ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          "This is a task",
      style: TextStyle(
        decoration:isChecked ?  TextDecoration.lineThrough: null
      ),),
      trailing: TaskCheckbox( checkBoxState:isChecked,toggleCheckboxState:checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool) toggleCheckboxState;

  TaskCheckbox({required this.checkBoxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged:(value){
          toggleCheckboxState(value!);
        });
  }
}
