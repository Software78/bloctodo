part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class AddTodo extends TodoEvent {
  final TaskModel taskModel;

  const AddTodo({required this.taskModel});

  @override
  List<Object> get props => [taskModel];
}

class RemoveTodo extends TodoEvent {
  final TaskModel taskModel;

  const RemoveTodo({required this.taskModel});
  @override
  List<Object> get props => [taskModel];
}

class EditTodo extends TodoEvent {
  final TaskModel taskModel;
  final String title;

  const EditTodo({required this.taskModel,required this.title});
  @override
  List<Object> get props => [taskModel,title];
}

class ToggleTodo extends TodoEvent {
  final TaskModel taskModel;

  const ToggleTodo({required this.taskModel});
  @override
  List<Object> get props => [taskModel];
}
