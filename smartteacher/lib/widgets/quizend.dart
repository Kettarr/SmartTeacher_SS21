import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/main.dart';

import 'iconquiz.dart';





class Quizend extends StatelessWidget{

    int rightanswers;
    double fontsize;

    Quizend({@required this.rightanswers, @required this.fontsize});

  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        title: Text("Ergebnis"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Container(
            margin: const EdgeInsets.all(15),
            child: Text("Sie haben "+rightanswers.toString()+" von 3 Fragen korrekt beantwortet.",
            textScaleFactor: fontsize, textAlign: TextAlign.center,),
            ),
            SizedBox(height: 80),
            RaisedButton(
              child: Text("Nochmal versuchen!", textScaleFactor: fontsize,),
              color: Colors.blue[100],
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Iconquiz(fontsize: fontsize)));
              },
              
            ),
            SizedBox(height: 30),
            RaisedButton(
              child: Text("Zurück zur Startseite", textScaleFactor: fontsize,),
              color: Colors.blue[100],
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Startpage(fontsize: fontsize,)));
              },
              
            ),

          ],
        ),

      ),
    );
  
  }
  
}