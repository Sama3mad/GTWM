class ReportQuestion{
  ReportQuestion(this.text, this.answers);

  String text;
  List <String> answers; 

  List <String> getAnswers(){
    List <String> AnswersList = List.of(answers);
    return AnswersList;
}
}