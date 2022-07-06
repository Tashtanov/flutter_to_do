import 'package:flutter/material.dart';
import 'package:flutter_to_do/bloc/task_bloc/task_bloc.dart';
import 'package:flutter_to_do/model/task.dart';

import 'bloc/bloc_exports.dart';
import 'screen/task_screen.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()) );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc()..add(AddTask(task: Tasks(title: "Task1"))),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskScreen(),
      ),
    );
  }
}


