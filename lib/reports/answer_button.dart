import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class AnswerButton extends StatefulWidget {
  String answerText;
  void Function() onTap;
  AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  var isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected? const Color.fromARGB(255, 103, 102, 102) : Color.fromARGB(255, 210, 204, 200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onPressed: (){
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Text(
        widget.answerText,
        textAlign: TextAlign.center,
        style: AppTextStyles.menuItem,
      ),
    );
  }
}