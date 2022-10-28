import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_list_app/ui/task_screen.dart';

import 'model/task_data.dart';


void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(create: (context) => TaskData(), child: TaskScreen()),
  ));

}