import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
          child: Padding(
        padding:
            const EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  size: 40,
                  color: Colors.blueAccent,
                ),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "TODO-List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              Text("Task to do",
                  style: TextStyle(color: Colors.white,
                      fontSize: 20)),
            ],),

      )),
    );
  }
}
