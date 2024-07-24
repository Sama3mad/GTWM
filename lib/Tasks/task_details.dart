import 'package:flutter/material.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/models/task.dart';
import 'package:gtwm_project/status_layout.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class TaskDetails extends StatelessWidget {
  TaskDetails({super.key, required this.selectedTask});
  Task selectedTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProjectAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  selectedTask.title,
                  style: AppTextStyles.projectsTitle,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'view subtasks',
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
            SizedBox(
              height: 30,
            ),
            StatusLayout(),
            SizedBox(
              height: 30,
            ),
            _buildDetailRow(
              icon: Icons.assignment,
              label: 'task title: ',
              value: selectedTask.title,
            ),
            SizedBox(
              height: 10,
            ),
            _buildDetailRow(
              icon: Icons.person,
              label: 'assigned project ',
              value: selectedTask.assignedProject,
            ),
            SizedBox(
              height: 10,
            ),
            _buildDetailRow(
              icon: Icons.date_range,
              label: 'start date: ',
              value: formatter.format(DateTime.now()),
            ),
            SizedBox(
              height: 10,
            ),
            _buildDetailRow(
              icon: Icons.date_range_outlined,
              label: 'deadline: ',
              value: formatter.format(DateTime.now()),
            ),
            SizedBox(
              height: 10,
            ),
            _buildDetailRow(
              icon: Icons.description,
              label: 'task description: ',
              value: selectedTask.taskDescription,
            ),
          ],

        ),
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: AppTextStyles.projectItem.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey),
            ),
            child: Text(
              value,
              softWrap: true,
              //The softWrap property in a Text widget in Flutter determines whether the text should wrap onto the next line when it exceeds the width of its container.
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
