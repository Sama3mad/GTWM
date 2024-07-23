import 'package:intl/intl.dart';

final formatter = DateFormat.yMMMMEEEEd();

class Project{
  Project({
    required this.title,
    required this.status,
    required this.deadline,
    required this.membersList,
  });
  String title;
  String status;
  DateTime deadline;
  List <Uri> membersList;
}