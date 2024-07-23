import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gtwm_project/models/project.dart';
import 'package:gtwm_project/project_card.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({super.key, required this.projects});
  List <Project> projects;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context,index){
        return ProjectCard(project: projects[index]);
      } );
  }
}