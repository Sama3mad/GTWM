import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gtwm_project/Projects/project_card.dart';
import 'package:gtwm_project/Tasks/task_card.dart';
import 'package:gtwm_project/models/task.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key, required this.tasks});
  List <Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context,index){
        return TaskCard(task: tasks[index]);
      } );
  }
}