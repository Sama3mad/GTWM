import 'package:flutter/material.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class TaskStatus extends StatelessWidget {
  const TaskStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'To do',
            style: AppTextStyles.projectItem,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
