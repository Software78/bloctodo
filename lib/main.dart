import 'package:bloc_todo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/todo_bloc.dart';

void main() {
  runApp(
    BlocProvider<TodoBloc>(
      create: (context) => TodoBloc(),
      child: const MaterialApp(home: MyApp()),
    ),
  );
}
