import 'package:bloc_todo/models/task_model.dart';
import 'package:bloc_todo/task_api/task_api.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> tasks = TaskApi.instance.tasks;

  addTask(TaskModel model) {
    TaskApi.instance.addTask(model);
    notifyListeners();
  }

  deleteTask(TaskModel model) {
    TaskApi.instance.deleteTask(model);
    notifyListeners();
  }

  toggleTask(TaskModel taskModel) {
    TaskApi.instance.toggleTask(taskModel);
    notifyListeners();
  }
}
