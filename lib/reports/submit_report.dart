import 'package:flutter/material.dart';
import 'package:gtwm_project/appBar.dart';
import 'package:gtwm_project/reports/questions_list.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class SubmitReport extends StatefulWidget {
  const SubmitReport({super.key});

  @override
  State<SubmitReport> createState() => _SubmitReportState();
}

class _SubmitReportState extends State<SubmitReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'reportName',
                  style: AppTextStyles.projectsTitle,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'view project reports',
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
            Expanded(child: QuestionsList()),
          ],
        ),
      ),
    );
  }
}
