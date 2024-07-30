class Subtask{
  Subtask({
    required this.title,
    required this.status,
    required this.deadline,
    required this.assignedProject,
    required this.startDate,
    required this.taskDescription,
    required this.member,
  });
  String title;
  String status;
  String assignedProject;
  DateTime deadline;
  DateTime startDate;
  String taskDescription;
  String member;
}