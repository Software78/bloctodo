import 'package:bloc/bloc.dart';
import 'package:bloc_todo/models/task_model.dart';
import 'package:bloc_todo/task_api/task_api.dart';
import 'package:equatable/equatable.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial(tasks: TaskApi.instance.tasks)) {
    on<AddTodo>((event, emit) => _addTodo(event, emit));
    on<EditTodo>((event, emit) => _editTodo(event, emit));
    on<RemoveTodo>((event, emit) => _removeTodo(event, emit));
    on<ToggleTodo>((event, emit) => _toggleTodo(event, emit));
  }

  _addTodo(AddTodo event, emit) {
    emit(TodoInitial(tasks: TaskApi.instance.tasks));
    TaskApi.instance.addTask(event.taskModel);
    emit(TodoFinal(tasks: TaskApi.instance.tasks));
  }

  _editTodo(EditTodo event, emit) {
    emit(TodoInitial(tasks: TaskApi.instance.tasks));
    TaskApi.instance.editTask(event.taskModel, event.title);
    emit(TodoFinal(tasks: TaskApi.instance.tasks));
  }

  _removeTodo(RemoveTodo event, emit) {}

  _toggleTodo(ToggleTodo event, emit) {}
}
