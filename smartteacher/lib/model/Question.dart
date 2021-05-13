import 'package:flutter/cupertino.dart';

import 'Answer.dart';

class Question{

  String question;
  Answer answer1;
  Answer answer2;
  Answer answer3;
  Icon icon;
  int id;

  Question({this.question, this.answer1, this.answer2, this.answer3, this.icon, this.id});

  String getQuestion(){
    return question;
  }
  Answer getAnswer1(){
    return answer1;
  }
  Answer getAnswer2(){
    return answer2;
  }
  Answer getAnswer3(){
    return answer3;
  }

  Icon getIcon(){
    return icon;
  }

  int getID(){
    return id;
  }

}