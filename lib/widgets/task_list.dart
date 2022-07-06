import 'package:flutter/material.dart';
import 'package:flutter_to_do/model/task.dart';
class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
    required this.tasklist,
  }) : super(key: key);

  final List<Tasks> tasklist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasklist.length,
          itemBuilder: (context, index) {
            var task = tasklist[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(value: task.isDone,onChanged: (value){},),
            );
          }),
    );
  }
}