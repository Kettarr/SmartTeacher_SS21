import 'package:flutter/cupertino.dart';

import 'Answer.dart';

class Question{

  String question;
  List<Answer> answerlist = [];
  Icon icon;
  int id;

  Question({this.question, this.answerlist, this.icon, this.id});

  String getQuestion(){
    return question;
  }
  List<Answer> getAnswerList(){
    return answerlist;
  }
  

  Icon getIcon(){
    return icon;
  }

  int getID(){
    return id;
  }

}