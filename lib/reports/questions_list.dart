import 'package:flutter/material.dart';
import 'package:gtwm_project/models/questions.dart';
import 'package:gtwm_project/reports/question_card.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return QuestionCard(currentQuestion: questions[index]);
      },
    );
  }
}
