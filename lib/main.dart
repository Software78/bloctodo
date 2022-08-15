import 'package:bloc_todo/bloc/task_bloc.dart';
import 'package:bloc_todo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider<TaskBloc>(
      create: (context) => TaskBloc(),
      child: const MaterialApp(
        home: MyApp(),
      ),
    ),
  );
}
