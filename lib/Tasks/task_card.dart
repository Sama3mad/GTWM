import 'package:flutter/material.dart';
import 'package:gtwm_project/models/task.dart';

class TaskCard extends StatelessWidget {
  TaskCard({super.key, required this.task});
  Task task;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Card(
          child: Text('Tasks'),
      ),
    );
  }
}