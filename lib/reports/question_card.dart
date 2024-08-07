import 'package:flutter/material.dart';
import 'package:gtwm_project/models/report_questions.dart';
import 'package:gtwm_project/reports/answer_button.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({super.key, required this.currentQuestion});
  ReportQuestion currentQuestion;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion.text,
          style: AppTextStyles.menuItem.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 30,
        ),
        ...currentQuestion.getAnswers().map((answer) {
          return AnswerButton(
            answerText: answer,
            onTap: () {
              //answering the question right
            },
          );
        }),
      ],
    );
  }
}
