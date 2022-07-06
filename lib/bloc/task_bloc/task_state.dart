part of 'task_bloc.dart';

 class TaskState extends Equatable {
   final List<Tasks> allTasks;
  const TaskState({ this.allTasks=const<Tasks>[]});
  @override
  // TODO: implement props
  List<Object?> get props => [allTasks];
}


