import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist/screens/add_task_screen.dart';

import '../models/task_data.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add,size: 45,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  size: 45,
                  color: Colors.lightBlueAccent,
                ),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Todoist',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
