import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/main.dart';
import 'package:smartteacher/model/Question.dart';
import 'package:smartteacher/widgets/iconquiz.dart';
import 'package:smartteacher/widgets/quizend.dart';


String getRightAnswer(List<Question> questionlist, index){
  String retstring= "";

  for(int i = 0; i<3; i++){
    if(questionlist[index].getAnswerList()[i].isRight(questionlist[index]))
      retstring = questionlist[index].getAnswerList()[i].getAnswer();

  }


  return retstring;

}


class Questionsite extends StatelessWidget {

  int rightquestions;
  int index;
  List<Question> questionlist;
  double fontsize;

  Questionsite({@required this.questionlist,@required this.index, @required this.rightquestions, @required this.fontsize});

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),
         onPressed: (){Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Startpage( fontsize: fontsize,)));
         },
         ),
         
                          
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
              child: Text (questionlist[index].getQuestion(), textScaleFactor: fontsize),
             
              
              ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.all(10),
              width: 250,
              height: 80,
              child: RaisedButton(
              color: Colors.blue[100],
              child: Text(questionlist[index].getAnswerList()[0].getAnswer(), textScaleFactor: fontsize),
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
                        child: Text("Weiter", textScaleFactor: fontsize,),
                        onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions, fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions, fontsize: fontsize,)));
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
                      title: Text("Das ist leider falsch. Richtig wäre: "+getRightAnswer(questionlist, index)),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: fontsize,),
                        onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: rightquestions,fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,fontsize: fontsize)));
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
              child: Text(questionlist[index].getAnswerList()[1].getAnswer(), textScaleFactor: fontsize),
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
                        child: Text("Weiter", textScaleFactor: fontsize,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions,fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions,fontsize: fontsize)));
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
                      title: Text("Das ist leider falsch. Richtig wäre: "+getRightAnswer(questionlist, index)),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: fontsize,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: rightquestions, fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,fontsize: fontsize)));
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
              child: Text(questionlist[index].getAnswerList()[2].getAnswer(), textScaleFactor: fontsize,),
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
                        child: Text("Weiter", textScaleFactor: fontsize,),
                         onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Quizend(rightanswers: ++rightquestions, fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: ++rightquestions,fontsize: fontsize)));
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
                      title: Text("Das ist leider falsch. Richtig wäre: "+getRightAnswer(questionlist, index)),
                      content: SingleChildScrollView(
                      child: RaisedButton(
                        color: Colors.blue[100],
                        child: Text("Weiter", textScaleFactor: fontsize,),
                       onPressed: () {
                        if(index==2){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>Quizend(rightanswers: rightquestions, fontsize: fontsize,)));
                        } else{ 
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Questionsite(questionlist : questionlist, index: ++index, rightquestions: rightquestions,fontsize: fontsize)));
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