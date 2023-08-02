import 'package:flutter/material.dart';
//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

// state class for myapp
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite dessert?',
      'answers': [
        {'text': 'Chocolate tuffle', 'score': 10},
        {'text': 'Treacle tart', 'score': 8},
        {'text': 'Chocolate cake', 'score': 2},
        {'text': 'Chocolate tiffin', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite subject?',
      'answers': [
        {'text': 'Biology', 'score ': 2},
        {'text': 'Physics', 'score': 5},
        {'text': 'Chemistry', 'score': 8},
        {'text': 'Computer Science', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite brand?',
      'answers': [
        {'text': 'Gucci', 'score ': 5},
        {'text': 'louis vuitton', 'score': 2},
        {'text': 'Nike', 'score': 8},
        {'text': 'adidas', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var abool = true;
    // abool = false;
    _totalscore = _totalscore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('no more questions!');
    }
  }

  //set up the basic app structure and navigation
  Widget build(BuildContext context) {
    //var dummy = ['Hello!'];
    //dummy.add('Max');
    //print(dummy);
    //dummy = [];
    //questions = []; //does not work if question is a const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PERSONALITY TEST'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
        //Result(resultScore, resetQuiz),
      ),
    );
  }
}
