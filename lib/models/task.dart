import 'package:intl/intl.dart';

final formatter = DateFormat.yMMMMEEEEd();

class Task{
  Task({
    required this.title,
    required this.status,
    required this.deadline,
    required this.membersList,
    required this.assignedProject,
    required this.startDate,
    required this.taskDescription,
  });
  String title;
  String status;
  String assignedProject;
  DateTime deadline;
  DateTime startDate;
  String taskDescription;
  List <Uri> membersList;
}