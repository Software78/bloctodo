part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoInitial extends TodoState {
  final List<TaskModel> tasks;

  const TodoInitial({required this.tasks});


  @override
  List<Object> get props => [tasks];
}

class TodoFinal extends TodoState {
  final List<TaskModel> tasks;

  const TodoFinal({required this.tasks});


  @override
  List<Object> get props => [tasks];
}
