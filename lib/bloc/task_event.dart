part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TaskEvent {
  final TaskModel taskModel;

  const AddTask({required this.taskModel});

  @override
  List<Object> get props => [taskModel];
}

class EditTask extends TaskEvent {
  const EditTask();

  @override
  List<Object> get props => [];
}

class ToggleTask extends TaskEvent {

  
  const ToggleTask();

  @override
  List<Object> get props => [];
}

class DeleteTask extends TaskEvent {
  const DeleteTask();

  @override
  List<Object> get props => [];
}
