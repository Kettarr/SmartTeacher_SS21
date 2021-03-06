import 'package:flutter/material.dart';

class WhatsAppBilder extends StatefulWidget {
  double fontsize;
  WhatsAppBilder({@required this.fontsize});
  @override
  _WhatsAppBilderState createState() => _WhatsAppBilderState(fontsize: fontsize);
}

class _WhatsAppBilderState extends State<WhatsAppBilder> {
  double fontsize;
  _WhatsAppBilderState({@required this.fontsize});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilder in WhatsApp versenden"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 10,
            color: Colors.white,
          ),             
          Container(
            margin: EdgeInsets.all(15),               
         
            color: Colors.white,
            child: Center(
              child: Text(
                "Wie bereits erwähnt, können in WhatsApp auch problemlos Bilder geteilt werden. \n Dazu öffnen Sie zuerst den Nachrichtenverlauf (auch Chat genannt) mit dem/der gewünschten Empfänger/in.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                                      
                    color: Colors.black,
                  ),  
              ),
            ),
          ), 
          Container(
            margin: EdgeInsets.all(15),               
          
            color: Colors.white,
            child: Center(
              child: Text(
                "Anschließend drücken Sie rechts neben dem Textfeld auf das Kamera Symbol:",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                                      
                    color: Colors.black,
                    fontWeight: FontWeight.bold,                    
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 70.0,
            width: 45.0,
            child: Image.asset('assets/whatsapp1.jpg'),
          ),           
          Container(
            margin: EdgeInsets.all(15),               
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Nun sehen Sie die Vorschau der Kamera.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                                      
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                       
          Container(
            height: 120.0,
            width: 45.0,
            child: Image.asset('assets/whatsapp2.jpg'),
          ),           
          Container(
            margin: EdgeInsets.all(15),               
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Wenn Sie das gewünschte Motiv im Bild haben, müssen Sie auf den Kreis unten in der Mitte drücken, um ein Foto zu machen. \n Wenn Sie mit dem Ergebnis zufrieden sind, können Sie es wie bei den Nachrichten mit dem Pfeil versenden.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                                      
                    color: Colors.black,
                  ),  
              ),
            ),
          ),  
          Container(
            margin: EdgeInsets.all(15),               
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Sie können auch ein bereits aufgenommenes Foto versenden, indem Sie auf die Büroklammer drücken. Mit der Kamera mit den Pfeilen rechts vom Auslöser können Sie zur vorderen Kamera wechseln.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize-0.2,
              style: TextStyle(
                                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                               
        ]
      ),     
    );
  }
}

