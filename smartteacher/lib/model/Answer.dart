import 'Question.dart';

class Answer{

  String answer;
  int id;

  Answer({this.answer, this.id});

  bool isRight(Question checkquestion){
    if(id==checkquestion.getID())
      return true;
    return false;
  }

  String getAnswer(){
    return answer;
  }

}

