import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo_bloc.dart';
import '../models/task_model.dart';

class EditTaskView extends StatefulWidget {
  const EditTaskView({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  final TaskModel taskModel;

  @override
  State<EditTaskView> createState() => _EditTaskViewState();
}

class _EditTaskViewState extends State<EditTaskView> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.taskModel.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TodoBloc>().add(
              EditTodo(taskModel: widget.taskModel, title: _controller.text));
          Navigator.pop(context);
        },
        child: const Icon(Icons.edit),
      ),
      appBar: AppBar(title: Text(widget.taskModel.title)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
