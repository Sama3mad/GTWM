import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/models/project.dart';
import 'package:gtwm_project/Projects/projects_bottomsheet.dart';
import 'package:gtwm_project/Projects/projects_list.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class Projects extends StatefulWidget {
  Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<Project> currentProjects = [
    Project(
        title: 'First project',
        status: 'ongoing',
        deadline: DateTime.now(),
        membersList: [
          Uri.parse('https://example.com/profile1.jpg'),
          Uri.parse('https://example.com/profile2.jpg'),
        ]),
    Project(
        title: 'Second project',
        status: 'ongoing',
        deadline: DateTime.now(),
        membersList: [
          Uri.parse('https://example.com/profile1.jpg'),
        ]),
    Project(
        title: 'Third project',
        status: 'ongoing',
        deadline: DateTime.now(),
        membersList: [
          Uri.parse('https://example.com/profile1.jpg'),
          Uri.parse('https://example.com/profile2.jpg'),
          Uri.parse('https://example.com/profile1.jpg'),
          Uri.parse('https://example.com/profile2.jpg'),
        ]),
  ];

  void openOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ProjectsBottomsheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectAppbar(),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Projects',
                    style: AppTextStyles.projectsTitle,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: openOverlay,
                    child: Text(
                      'New project',
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
                height: 10,
              ),
              Expanded(
                child: ProjectsList(projects: currentProjects),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
