import 'package:flutter/material.dart';
import 'package:gtwm_project/Tasks/task_card.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/models/task.dart';
import 'package:gtwm_project/projectsBoard/task_status.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class ProjectsBoard extends StatelessWidget {
  const ProjectsBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProjectAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'Projects/project name/tasks',
              style: AppTextStyles.projectsTitle,
            ),
            SizedBox(
              height: 30,
            ),
            TaskStatus(),
            SizedBox(
              height: 20,
            ),
            TaskCard(
                task: Task(
                    title: 'title',
                    status: 'status',
                    deadline: DateTime.now(),
                    membersList: [],
                    assignedProject: 'assignedProject',
                    startDate: DateTime.now(),
                    taskDescription: 'taskDescription')),
            Spacer(),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
