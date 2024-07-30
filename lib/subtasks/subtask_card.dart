import 'package:flutter/material.dart';
import 'package:gtwm_project/models/subtask.dart';
import 'package:gtwm_project/status_layout.dart';
import 'package:gtwm_project/styles/text_styles.dart';
import 'package:gtwm_project/subtasks/subtask_details.dart';

class SubtaskCard extends StatefulWidget {
  SubtaskCard({super.key, required this.subtask});
  Subtask subtask;

  @override
  State<SubtaskCard> createState() => _SubtaskCardState();
}

class _SubtaskCardState extends State<SubtaskCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 250,
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
                    widget.subtask.title,
                    style: AppTextStyles.projectItem,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text('assigned to @'),
                      Text('${widget.subtask.member}'),

                    ],
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
                      widget.subtask.taskDescription,
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
              builder: (context) => SubtaskDetails(
                    selectedSubtask: widget.subtask,
                  )),
        );
      },
    );
  }
}
