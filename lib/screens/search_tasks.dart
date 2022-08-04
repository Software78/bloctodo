import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../task_api/task_api.dart';
import '../widgets/task_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;

  List<TaskModel> dummyTasks = List.generate(
    TaskApi.instance.tasks.length,
    (index) => TaskApi.instance.tasks[index],
  );

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: TextField(
          decoration: null,
          autofocus: true,
          onChanged: (value) {
          },
        ),
      ),
      body: 
         
           const Center(
            child: Text('Type a word to search'),
          ),);
  
  }
}
