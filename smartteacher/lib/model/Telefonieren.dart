import 'package:flutter/material.dart';
import 'AnrufAnnehmen.dart';
import 'AnrufAuflegen.dart';
import 'Anrufen.dart';
import 'AnrufTastatur.dart';

class Telefonieren extends StatefulWidget {
  @override
  _TelefonierenState createState() => _TelefonierenState();
}

class _TelefonierenState extends State<Telefonieren> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telefonieren"),
        centerTitle: true,       
      ),
      body: ListView(
          children: <Widget> [
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,                 
                 child:  RaisedButton(                   
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnrufAnnehmen()),
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Anruf annehmen", textScaleFactor: 1.5,
                      )                                                           
                ),    
              ),              
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,                 
                 child: RaisedButton(                   
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnrufAuflegen()),
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Auflegen", textScaleFactor: 1.5,
                      )                                        
                ),       
                ), 
            SizedBox(height: 20),     
            Container(
              height: 80,
              width: 400,                 
                  child: RaisedButton(                   
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Anrufen()),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Jemanden anrufen", textScaleFactor: 1.5,
                      )                                                           
                ),       
              ),
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,                 
                 child:  RaisedButton(                   
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnrufTastatur()), 
                     );                    
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Tastatur während Anruf", textScaleFactor: 1.5,
                      )                                                           
                ),    
              ),                                                                        
          ],  
      ),
    );
  }
}