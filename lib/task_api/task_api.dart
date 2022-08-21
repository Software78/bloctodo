// ignore_for_file: prefer_final_fields

import '../models/task_model.dart';

class TaskApi {
  TaskApi._privateConstructor();

  static final TaskApi instance = TaskApi._privateConstructor();

  List<TaskModel> _tasks = [
    TaskModel(title: "Initial Task", id: 0),
    TaskModel(title: "New Task", isDone: true, id: 1),
    TaskModel(title: "Another Task", id: 2),
    TaskModel(title: "This Task", id: 3, isDone: true),
  ];

  List<TaskModel> get tasks => _tasks;

  addTask(TaskModel taskModel) {
    _tasks.add(taskModel);
  }

  toggleTask(TaskModel taskModel) {
    taskModel.isDone = !taskModel.isDone;
  }

  editTask(TaskModel taskModel, String newTitle) {
    taskModel.title = newTitle;
  }

  deleteTask(TaskModel model) {
    tasks.removeWhere((element)=> element.title == model.title );
  }
}
