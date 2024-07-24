import 'package:flutter/material.dart';
import 'package:gtwm_project/models/project.dart';
import 'package:gtwm_project/status_layout.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard({super.key, required this.project});
  Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    project.title,
                    style: AppTextStyles.projectItem,
                  ),
                  Spacer(),
                  ...buildProfiles(project.membersList),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              StatusLayout(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    formatter.format(project.deadline),
                    style: AppTextStyles.cardText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> buildProfiles(List<Uri> members) {
  List<Widget> avatars = [];
  int displayedCount = members.length > 3 ? 3 : members.length;
  for (int i = 0; i < displayedCount; i++) {
    avatars.add(
      CircleAvatar(
        backgroundImage: AssetImage('assets/Sama.JPG'),
      ),
    );
  }

  if (members.length > 3) {
    avatars.add(
      CircleAvatar(
        backgroundColor: Colors.grey,
        child: Text(
          '+${members.length - 3}',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
  return avatars;
}
