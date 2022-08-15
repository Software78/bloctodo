import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../screens/edit_task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskModel.title,
        style: TextStyle(
          decoration: taskModel.isDone
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            onChanged: (value) {
              
            },
            value: taskModel.isDone,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditTaskView(
                      taskModel: taskModel,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.edit)),
        ],
      ),
    );
  }
}
