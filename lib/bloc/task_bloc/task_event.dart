part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class AddTask extends TaskEvent{
  final Tasks task;

  const AddTask({required this.task});
  @override
  // TODO: implement props
  List<Object?> get props => [task];
}
class UpdateTask extends TaskEvent{
  final Tasks task;

  const UpdateTask({required this.task});
  @override
  // TODO: implement props
  List<Object?> get props => [task];
}
class DeleteTask extends TaskEvent{
  final Tasks task;

  const DeleteTask({required this.task});
  @override
  // TODO: implement props
  List<Object?> get props => [task];
}
