import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_do/bloc/bloc_exports.dart';
import 'package:flutter_to_do/model/task.dart';
import 'package:flutter_to_do/widgets/task_list.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);


  Future<void> _addTask(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: AddTaskScreen(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        List<Tasks> taskList = state.allTasks;
        return Scaffold(
          appBar: AppBar(
            title: Text('Flutter To Do'),
            actions: [IconButton(onPressed: () {_addTask(context);}, icon: Icon(Icons.add))],
          ),
          body: Column(
            children: [
              Center(
                child: Chip(
                  label: Text("Tasks"),
                ),
              ),
              TaskList(tasklist: taskList)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _addTask(context);
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}


