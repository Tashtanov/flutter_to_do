import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_to_do/model/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTask>(_onAddTask);
    // on<UpdateTask>(_onUpdateTask);
    // on<DeleteTask>(_onDeleteTask);
  }
  void _onAddTask(AddTask event,emit){
    final state=this.state;
    emit(TaskState(allTasks: List.from(state.allTasks)..add(event.task)));
  }
}
