import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Question.dart';

class questionsite extends StatelessWidget {

  int index;
  List<Question> questionlist;

  questionsite({@required this.questionlist,@required this.index});

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
              child: Text(questionlist[index].getAnswer1().getAnswer(), textScaleFactor: 1.5),
              onPressed: () { 
                if(questionlist[index].getAnswer1().isRight(questionlist[index])){
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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
              child: Text(questionlist[index].getAnswer2().getAnswer(), textScaleFactor: 1.5),
               onPressed: () { 
                if(questionlist[index].getAnswer2().isRight(questionlist[index])){
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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
              child: Text(questionlist[index].getAnswer3().getAnswer(), textScaleFactor: 1.5,),
                onPressed: () { 
                if(questionlist[index].getAnswer3().isRight(questionlist[index])){
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => questionsite(questionlist : questionlist, index: ++index)));
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