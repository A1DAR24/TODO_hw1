import 'package:flutter/material.dart';
import 'package:todo_1/homePage.dart';

void main()=> runApp(TodoApp());

class TodoApp extends StatelessWidget{
  TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}