import 'package:quizzappg15/models/question_model.dart';

class Quizbrain {
  List<QuestionModel> questionList = [
    QuestionModel(question: "¿El hombre llegó a la luna?", answer: true),
    QuestionModel(question: "¿Has cenado hoy?", answer: false),
    QuestionModel(question: "¿Saliste ayer?", answer: false),
    QuestionModel(question: "¿Has desayunado?", answer: true),
    QuestionModel(question: "¿Sientes frio?", answer: false),
    QuestionModel(question: "¿El sol es una estrella?", answer: true),
    QuestionModel(question: "¿Flutter usa Dart?", answer: true),
  ];
  int questionIndex = 0;

  String getQuestionText() {
    return questionList[questionIndex].question;
  }

  bool getQuestionAnswer() {
    return questionList[questionIndex].answer;
  }

  void nextQuestion() {
    questionIndex++;
  }
}
