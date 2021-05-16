import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Question.dart';
import 'package:smartteacher/widgets/quizend.dart';

class Questionsite extends StatelessWidget {

  int rightquestions;
  int index;
  List<Question> questionlist;

  Questionsite({@required this.questionlist,@required this.index, @required this.rightquestions});

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: Text("Frage "+(index+1).toString()),
        centerTitle: true,
      ), 
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 200,
              child: questionlist[index].getIcon(),
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(15),
              child: Text (questionlist[index].getQuestion(), textScaleFactor: 1.5),
             
              
              ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.all(10),
              width: 250,
              height: 80,
              child: RaisedButton(
              color: Colors.blue[100],
              child: Text(questionlist[index].getAnswerList()[0].getAnswer(), textScaleFactor: 1.5),
              onPressed: () { 
                if(questionlist[index].getAnswerList()[0].isRight(questionlist[index])){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Richtige Antwort!"),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                        onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );
                } else {
                   showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Das ist leider falsch..."),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                        onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );

                }
                  
                
                
             
              },

            ),


            ),
            Container(
              margin: EdgeInsets.all(10),
             width: 250,
              height: 80,
              child: RaisedButton(
              color: Colors.blue[100],
              child: Text(questionlist[index].getAnswerList()[1].getAnswer(), textScaleFactor: 1.5),
               onPressed: () { 
                if(questionlist[index].getAnswerList()[1].isRight(questionlist[index])){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Richtige Antwort!"),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );
                } else {
                   showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Das ist leider falsch..."),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );

                }
                  
                
                
             
              },

            ),


            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 250,
              height: 80,
              child: RaisedButton(
              color: Colors.blue[100],
              child: Text(questionlist[index].getAnswerList()[2].getAnswer(), textScaleFactor: 1.5,),
                onPressed: () { 
                if(questionlist[index].getAnswerList()[2].isRight(questionlist[index])){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Richtige Antwort!"),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );
                } else {
                   showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                      title: Text("Das ist leider falsch..."),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: 1.8,),
                       onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>Quizend(rightanswers: rightquestions,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,)));
                        }
                        },

                      ),

                      ),
                    );
                  },
                  );

                }
                  
                
                
             
              },

            ),


            ),

          ],
        ),

    ),
    );
    



  }
}