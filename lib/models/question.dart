import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers
  });
}

class QuestionData{
  final _data =[
    Question(
        title: 'The best cross-Platform tool is ...',
        answers: [
        {'answer':'Dart/Flutter','isCorrect':1},
        {'answer':'Java',},
        {'answer':'Xamarin Framework',},
        {'answer':'C#',},
         ]
    ),
    Question(
        title: 'The developer should know ...',
        answers: [
          {'answer':'OOP principles',},
          {'answer':'SOLID, OOP principles and it is only beginning', 'isCorrect':1},
          {'answer':'SOLID principles',},
          {'answer':'nothing. There are not any rules for writing code',},
        ]
    ),
    Question(
        title: 'Yevgeniy Zakharchenko is a good developer, because he ...',
        answers: [
          {'answer':'enjoys learning and developing',},
          {'answer':'likes to program',},
          {'answer':'takes responsibility for his duties',},
          {'answer':'all the variants and a lot of more reason','isCorrect':1},
        ]
    ),
    Question(
        title: 'Flutter is an open-source UI software  created by ...',
        answers: [
          {'answer':'Huawei',},
          {'answer':'Google','isCorrect':1},
          {'answer':'Tesla',},
          {'answer':'Apple',},
        ]
    ),
    Question(
        title: 'Do You want Yevgeniy to work in your team?',
        answers: [
          {'answer':'You bet!','isCorrect':1},
          {'answer':'Of course, YES!!!,','isCorrect':1},
          {'answer':'Sure thing!','isCorrect':1},
          {'answer':'Surely','isCorrect':1},
        ]
    ),
  ];

  List<Question> get questions =>[..._data];
}
