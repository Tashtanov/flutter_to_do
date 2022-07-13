part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<Tasks> allTasks;

  const TaskState({this.allTasks = const <Tasks>[]});

  @override
  // TODO: implement props
  List<Object?> get props => [allTasks];

  // Map<String, dynamic> toMap() {
  //   return {
  //     'allTasks': allTasks,
  //   };
  // }
  //
  // factory TaskState.fromMap(Map<String, dynamic> map) {
  //   return TaskState(
  //     allTasks: map['allTasks'] as List<Tasks>,
  //   );
  // }
Map<String, dynamic> toMap() {
    return {
      'allTasks': allTasks.map((x)=>x.toMap()).toList(),
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      allTasks: List<Tasks>.from(map['allTasks']?.map((x)=>Tasks.fromMap(x))),
    );
  }
}
