import 'package:flutter/material.dart';
import 'WhatsApp.dart';
import 'WhatsAppNachrichten.dart';
import 'WhatsAppBilder.dart';
import 'Sms.dart';
import 'SmsVerfassen.dart';
import 'EMail.dart';
import 'EMailVerfassen.dart';

class Nachrichten extends StatefulWidget {
  Nachrichten({@required this.fontsize});
  double fontsize;

  @override
  _NachrichtenState createState() => _NachrichtenState(fontsize: fontsize);
}

class _NachrichtenState extends State<Nachrichten> {

  double fontsize;

  _NachrichtenState({@required this.fontsize});
  
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
                        MaterialPageRoute(builder: (context) => Sms(fontsize: fontsize)),
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist eine SMS?", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => SmsVerfassen(fontsize: fontsize)),
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Eine SMS verfassen", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => WhatsApp(fontsize: fontsize)),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist WhatsApp?", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => WhatsAppNachrichten(fontsize: fontsize)), 
                     );                    
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Nachrichten in WhatsApp", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => WhatsAppBilder(fontsize: fontsize)),
                     );                   
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Bilder in WhatsApp versenden", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => EMail(fontsize: fontsize)),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist eine E-Mail?", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => EMailVerfassen(fontsize: fontsize)),
                     );
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "E-Mail versenden", textScaleFactor: fontsize,
                      )                                                           
                  ),       
            ),                                                                        
          ],  
      ),
    );
  }
}