

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Answer.dart';
import 'package:smartteacher/model/Question.dart';
import 'package:smartteacher/widgets/questionsite.dart';


List<Question> getRandomThreeQuestions(){

  Answer answer1 = new Answer(answer: "Messenger Nachricht", id: 0 );
  Answer answer2 = new Answer(answer: "Fehlermeldung", id: 1);
  Answer answer3 = new Answer(answer: "SMS", id: 2);

 
  Question q1 = new Question(icon: Icon(Icons.messenger_outline_sharp, size: 70,), answer1: answer1, answer2: answer2, answer3: answer3 , question: "Was bedeutet dieses Icon?", id: 0);
  List<Question> returnlist = [];
  returnlist.add(q1);

  return returnlist;
}

class iconquiz extends StatelessWidget {

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
                    builder: (context) => questionsite(questionlist : questionlist, index: index)));
            },

          ),
          ),
          
        ],
      ),

    );


  }

}