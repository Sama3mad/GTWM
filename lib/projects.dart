import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtwm_project/models/project.dart';
import 'package:gtwm_project/projects_list.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class Projects extends StatelessWidget {
  Projects({super.key});

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image(image: AssetImage('assets/gammal_tech_logo.png')),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 5),
              InkWell(
                child: Text(
                  'Projects',
                  style: AppTextStyles.selectedMenuItem,
                ),
                onTap: () {
                  print('tapped');
                },
              ),
              SizedBox(width: 20),
              InkWell(
                child: Text(
                  'Tasks',
                  style: AppTextStyles.menuItem,
                ),
                onTap: () {
                  print('tapped');
                },
              ),
              SizedBox(width: 20),
              InkWell(
                child: Text(
                  'Teams',
                  style: AppTextStyles.menuItem,
                ),
                onTap: () {
                  print('tapped');
                },
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Sama.JPG'),
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 0, 128, 129),
        ),
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
                    onPressed: () {},
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
