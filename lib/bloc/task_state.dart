part of 'task_bloc.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object> get props => [];
}

class TaskInitial extends TaskState {
  const TaskInitial();

  @override
  List<Object> get props => [];
}

class TaskFinal extends TaskState {
  final List<TaskModel> tasks;

  const TaskFinal({required this.tasks});

  @override
  List<Object> get props => [tasks];
}
