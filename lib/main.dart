import 'package:flutter/material.dart';
import 'package:gtwm_project/Projects/projects.dart';
import 'package:gtwm_project/Tasks/tasks.dart';
import 'package:gtwm_project/projectsBoard/projects_board.dart';
import 'package:gtwm_project/reports/submit_report.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubmitReport(),
    ),
  );
}