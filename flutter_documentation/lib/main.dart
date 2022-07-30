import 'package:flutter/material.dart';
import 'package:flutter_documentation/answer/answer.dart';
import 'package:flutter_documentation/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void _answerQuestion(context) {
    setState(() {
       questionIndex = questionIndex + 1;
       print(questionIndex);
    });
   
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText':'What is your favorite color?',
        'answers':['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText':'What is your favorite Animal?',
        'answers':['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText':'What is your favorite Insturctor?',
        'answers':['Max', 'Max', 'Max', 'Max'],
      },
    ];
    String? tittle = 'My First App';
    String bodyText = "The Question !";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tittle),
        ),
        body: Column(
          children: [
            Text(bodyText),
           
           
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
