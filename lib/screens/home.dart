import 'package:bloc_todo/provider/task_provider.dart';
import 'package:bloc_todo/screens/search_tasks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        child: Consumer<TaskProvider>(builder: (context, state, _) {
        return  ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) => TaskItem(
              taskModel: state.tasks[index],
            ),
          );
        }),
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
