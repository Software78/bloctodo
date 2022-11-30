import 'package:bloc_todo/screens/search_tasks.dart';
import 'package:bloc_todo/task_api/task_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo_bloc.dart';
import '../widgets/task_item.dart';
import 'add_task.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            if (state is TodoInitial) {
              return ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) =>
                    TaskItem(taskModel: state.tasks[index]),
              );
            }
            if (state is TodoFinal) {
             return ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) =>
                    TaskItem(taskModel: state.tasks[index]),
              );
            }
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => TaskItem(
                taskModel: TaskApi.instance.tasks.first,
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateTask(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
