import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  // const DetailScreen({super.key, required this.todo});
  const DetailScreen({super.key});

  // Declare a field that holds the Todo.
  //final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("todo.title"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("todo.description"),
      ),
    );
  }
}