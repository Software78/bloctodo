import 'package:bloc_todo/provider/task_provider.dart';
import 'package:bloc_todo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TaskProvider>(
      create: (_) => TaskProvider() ,
      child: const MaterialApp(
        home: MyApp(),
      ),
    ),
  );
}
