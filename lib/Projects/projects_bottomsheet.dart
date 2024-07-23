import 'package:flutter/material.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class ProjectsBottomsheet extends StatelessWidget {
  const ProjectsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Notifications/Reminders',
                  style: AppTextStyles.projectItem,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
