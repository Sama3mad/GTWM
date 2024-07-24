import 'package:flutter/material.dart';
import 'package:gtwm_project/Tasks/tasks_list.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/models/task.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class Tasks extends StatelessWidget {
  Tasks({super.key});

  List<Task> currentTasks = [
    Task(
        title: 'first task',
        status: 'ongoing',
        deadline: DateTime.now(),
        membersList: [],
        assignedProject: 'first project',
        startDate: DateTime.now(),
        taskDescription: 'This is the first task in this page'),
    Task(
        title: 'second task',
        status: 'ongoing',
        deadline: DateTime.now(),
        membersList: [],
        assignedProject: 'second project',
        startDate: DateTime.now(),
        taskDescription: 'This is the second task in this page')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProjectAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tasks',
              style: AppTextStyles.projectsTitle,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: TasksList(tasks: currentTasks)),
          ],
        ),
      ),
    );
  }
}
