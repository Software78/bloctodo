import 'package:bloc/bloc.dart';
import 'package:bloc_todo/models/task_model.dart';
import 'package:bloc_todo/task_api/task_api.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskFinal(tasks: TaskApi.instance.tasks)) {
    on<AddTask>((event, emit) => _onAddTask(event, emit));
    on<EditTask>((event, emit) => _onEditTask(event, emit));
    on<ToggleTask>((event, emit) => _onToggleTask(event, emit));
    on<DeleteTask>((event, emit) => _onDeleteTask(event, emit));
  }

  _onAddTask(AddTask event, emit) {
    emit(const TaskInitial());
    TaskApi.instance.addTask(event.taskModel);
    emit(TaskFinal(tasks: TaskApi.instance.tasks));
  }

  _onEditTask(event, emit) {}

  _onDeleteTask(event, emit) {}

  _onToggleTask(event, emit) {

    
  }
}
