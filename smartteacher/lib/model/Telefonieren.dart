import 'package:flutter/material.dart';
import 'AnrufAnnehmen.dart';
import 'AnrufAuflegen.dart';
import 'Anrufen.dart';
import 'AnrufTastatur.dart';

class Telefonieren extends StatefulWidget {
  double fontsize;
  Telefonieren({@required this.fontsize});
  @override
  _TelefonierenState createState() => _TelefonierenState(fontsize: fontsize);
}

class _TelefonierenState extends State<Telefonieren> {
  double fontsize;
  _TelefonierenState({@required this.fontsize});
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
                        MaterialPageRoute(builder: (context) => AnrufAnnehmen(fontsize: fontsize,)),
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Anruf annehmen", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => AnrufAuflegen(fontsize: fontsize)),
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Auflegen", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => Anrufen(fontsize: fontsize)),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Jemanden anrufen", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => AnrufTastatur(fontsize: fontsize)), 
                     );                    
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Tastatur während Anruf", textScaleFactor: fontsize,
                      )                                                           
                ),    
              ),                                                                        
          ],  
      ),
    );
  }
}