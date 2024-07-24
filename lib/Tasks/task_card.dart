import 'package:flutter/material.dart';
import 'package:gtwm_project/Tasks/task_details.dart';
import 'package:gtwm_project/models/task.dart';
import 'package:gtwm_project/status_layout.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class TaskCard extends StatefulWidget {
  TaskCard({super.key, required this.task});
  Task task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 220,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            color: Colors.white,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.task.title,
                    style: AppTextStyles.projectItem,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  StatusLayout(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 0.5, // Border width
                      ),
                    ),
                    child: Text(
                      widget.task.taskDescription,
                      style: AppTextStyles.taskDescription,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TaskDetails(
                    selectedTask: widget.task,
                  )),
        );
      },
    );
  }
}
