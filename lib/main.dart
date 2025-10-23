import 'package:flutter/material.dart';
import 'package:tasks/HomePage.dart';
import 'package:tasks/ToDoDetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: Tododetailpage(),
    );
  }
}

