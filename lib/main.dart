import 'package:flutter/material.dart';
import 'package:kbc_quize_app/homePage.dart';
import 'package:kbc_quize_app/lose.dart';
import 'package:kbc_quize_app/question.dart';
import 'package:kbc_quize_app/result.dart';

import 'finalwon.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) =>  HomePage(),

        'lose' : (context) => Looserscreen(),
        'qna' : (context) => QuestionScreen(),
        'result' : (context) => Result(),
      },
    ),
  );
}