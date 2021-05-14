

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Answer.dart';
import 'package:smartteacher/model/Question.dart';
import 'package:smartteacher/widgets/questionsite.dart';


List<Answer> getAnswerList(){

  List<Answer> answerlist = [];
  Answer answer1 = new Answer(answer: "Messenger Nachricht", id: 0 );
  Answer answer2 = new Answer(answer: "Fehlermeldung", id: 1);
  Answer answer3 = new Answer(answer: "SMS", id: 2);
  Answer answer4 = new Answer(answer: "Einstellungen", id: 3);
  Answer answer5 = new Answer(answer: "Bluetooth", id: 4);
  Answer answer6 = new Answer(answer: "WLAN", id: 5);
  Answer answer7 = new Answer(answer: "Suche", id: 6);
  Answer answer8 = new Answer(answer: "Hinzufügen", id: 7);
  Answer answer9 = new Answer(answer: "Favoriten", id: 8);




  
  answerlist.add(answer1);
  answerlist.add(answer2);
  answerlist.add(answer3);
  answerlist.add(answer4);
  answerlist.add(answer5);
  answerlist.add(answer6);
  answerlist.add(answer7);
  answerlist.add(answer8);
  answerlist.add(answer9);

  return answerlist;

}


List<Question> getQuestionList(){

  List<Question> returnlist = [];

  Question q5 = new Question(icon: Icon(Icons.bluetooth, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 4);
  Question q4 = new Question(icon: Icon(Icons.settings, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 3);
  Question q3 = new Question(icon: Icon(Icons.message, size: 70,), answerlist: [], question: "Was bedeutet dieses Icon?", id: 2);
  Question q2 = new Question(icon: Icon(Icons.error, size: 70,), answerlist: [], question: "Was bedeutet dieses Icon?", id: 1);
  Question q1 = new Question(icon: Icon(Icons.messenger_outline_sharp, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 0);
  Question q6 = new Question(icon: Icon(Icons.wifi, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 5);
  Question q7 = new Question(icon: Icon(Icons.search, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 6);
  Question q8 = new Question(icon: Icon(Icons.add, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 7);
  Question q9 = new Question(icon: Icon(Icons.favorite, size: 70,),answerlist: [], question: "Was bedeutet dieses Icon?", id: 8);
 
  returnlist.add(q1);
  returnlist.add(q2);
  returnlist.add(q3);
  returnlist.add(q4);
  returnlist.add(q5);
  returnlist.add(q6);
  returnlist.add(q7);
  returnlist.add(q8);
  returnlist.add(q9);



  return returnlist;
}

Answer getRightAnswer(Question q, List<Answer> answerlist){
  Answer returnanswer;
  for(int i= 0; i<answerlist.length; i++){
    if(q.getID()==answerlist[i].id)
      returnanswer = answerlist[i];
  }

  print("question: "+q.id.toString()+" returnanswer: "+returnanswer.id.toString());

  return returnanswer;
}

List<Question> getRandomThreeQuestions(){
   var random = new Random();

  List<Question> allquestions = getQuestionList();
  List<Answer> allanswers = getAnswerList();
  List<Question> returnlist = [];
  
 
  for(int i=0; i<3; i++){
    returnlist.add(allquestions[random.nextInt(allquestions.length)]);
  }
 
  for(int i= 0; i<returnlist.length; i++){
      returnlist[i].answerlist.add(getRightAnswer(returnlist[i], allanswers));
      while(returnlist[i].answerlist.length<3){
        if(random.nextBool()){
          returnlist[i].answerlist.add(allanswers[random.nextInt((allanswers.length))]);
        }else{
           returnlist[i].answerlist.insert(0, allanswers[random.nextInt((allanswers.length))]);
        }
        print(returnlist.length.toString());
     }
    }
  
  print('getsttoreturn');

 
  return returnlist;
}

class Iconquiz extends StatelessWidget {

  int index = 0;
  List<Question> questionlist = getRandomThreeQuestions();

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Quiz"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 70),
          Container(
            margin: const EdgeInsets.all(15),
            child: Text("In diesem Quiz werden wir Ihnen Bilder - so genannte Icons - zeigen und Sie können tippen welche Bedeutung das jeweilige Icon hat.",
          textScaleFactor: 1.5)
          ),
          SizedBox(height: 140),
          Container(
            height: 60,
            width: 150,

            child: RaisedButton(
             color: Colors.blue[100],
             child: Text("Start!", textScaleFactor: 1.8,),
             onPressed: () { 
               Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Questionsite(questionlist : questionlist, index: index, rightquestions: 0,)));
            },

          ),
          ),
          
        ],
      ),

    );


  }

}