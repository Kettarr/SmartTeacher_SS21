import 'package:flutter/material.dart';
import 'WhatsApp.dart';
import 'WhatsAppNachrichten.dart';
import 'WhatsAppBilder.dart';
import 'Sms.dart';
import 'SmsVerfassen.dart';
import 'EMail.dart';
import 'EMailVerfassen.dart';

class Nachrichten extends StatefulWidget {
  @override
  _NachrichtenState createState() => _NachrichtenState();
}

class _NachrichtenState extends State<Nachrichten> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nachrichten"),
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
                        MaterialPageRoute(builder: (context) => Sms()),
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist eine SMS?", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => SmsVerfassen()),
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Eine SMS verfassen", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => WhatsApp()),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist WhatsApp?", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => WhatsAppNachrichten()), 
                     );                    
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Nachrichten in WhatsApp", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => WhatsAppBilder()),
                     );                   
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Bilder in WhatsApp versenden", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => EMail()),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist eine E-Mail?", textScaleFactor: 1.5,
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
                        MaterialPageRoute(builder: (context) => EMailVerfassen()),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "E-Mail versenden", textScaleFactor: 1.5,
                      )                                                           
                  ),       
            ),                                                                        
          ],  
      ),
    );
  }
}