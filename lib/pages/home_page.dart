import 'package:flutter/material.dart';
import 'package:quizzappg15/quizbrain.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Quizbrain quizbrain = Quizbrain();

  void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizbrain.getQuestionAnswer();
    if (userAnswer == correctAnswer) {
      print("La respuesta es CORRECTA");
    } else {
      print("La respuesta es INCORRECTA");
    }
    quizbrain.nextQuestion();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2F3243),
      appBar: AppBar(
        title: Text("QuizzApp"),
        centerTitle: true,
        backgroundColor: Color(0xff2F3243),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                quizbrain.getQuestionText(),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.greenAccent,
                child: Text("Verdadero"),
                onPressed: () {
                  checkAnswer(true);
                },
                minWidth: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.redAccent,
                child: Text("Falso"),
                minWidth: double.infinity,
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
