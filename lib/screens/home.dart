import 'package:bloc_todo/screens/search_tasks.dart';
import 'package:flutter/material.dart';

import '../task_api/task_api.dart';
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
        child:  ListView.builder(
              itemCount: TaskApi.instance.tasks.length,
              itemBuilder: (context, index) => TaskItem(
                taskModel: TaskApi.instance.tasks[index],
              ),
            )
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
