import 'package:flutter/material.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/models/subtask.dart';
import 'package:gtwm_project/styles/text_styles.dart';
import 'package:gtwm_project/subtasks/subtask_card.dart';

class Subtasks extends StatelessWidget {
  Subtasks({super.key, required this.taskName});
  String taskName;
  // List <Subtask> currentSubtasks = [
  //   Subtask(title: 'title', status: 'status', deadline: DateTime.now(), assignedProject: 'assignedProject', startDate: DateTime.now(), taskDescription: 'taskDescription'),
  //   Subtask(title: 'title', status: 'status', deadline: DateTime.now(), assignedProject: 'assignedProject', startDate: DateTime.now(), taskDescription: 'taskDescription'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProjectAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  taskName,
                  style: AppTextStyles.projectsTitle,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'New subtask',
                    style: AppTextStyles.newProjectButton,
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromARGB(255, 255, 145, 76),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SubtaskCard(subtask: Subtask(title: 'subtask title', status: 'status', deadline: DateTime.now(), assignedProject: 'assignedProject', startDate: DateTime.now(), taskDescription: 'subtaskDescription', member: 'SamaEmad')),
            SubtaskCard(subtask: Subtask(title: 'subtask title', status: 'status', deadline: DateTime.now(), assignedProject: 'assignedProject', startDate: DateTime.now(), taskDescription: 'subtaskDescription', member: 'SamaEmad')),

          ],
        ),
      ),
    );
  }
}
