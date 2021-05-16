import 'package:flutter/material.dart';

class WhatsAppNachrichten extends StatefulWidget {
  @override
  _WhatsAppNachrichtenState createState() => _WhatsAppNachrichtenState();
}

class _WhatsAppNachrichtenState extends State<WhatsAppNachrichten> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nachrichten in WhatsApp"),
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
            height: 80,
            color: Colors.white,
            child: Center(
              child: Text(
                "Wenn Sie in WhatsApp jemanden schreiben wollen, mit dem Sie bisher noch nicht kommuniziert haben, machen Sie das mit dem Symbol rechts unten:",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ), 
          Container(
            height: 80.0,
            width: 45.0,
            child: Image.asset('assets/neuenachricht.jpg'),
          ),           
          Container(
            margin: EdgeInsets.all(15),               
            height: 60,
            color: Colors.white,
            child: Center(
              child: Text(
                "Anders als bei SMS müssen Sie den/die EmpfängerIn als Kontakt eingespeichert haben, um ihm/ihr per WhatsApp schreiben zu können.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                
          Container(
            margin: EdgeInsets.all(15),               
            height: 120,
            color: Colors.white,
            child: Center(
              child: Text(
                "Sobald Sie die gewünschte Person am oberen Bildschirmrand sehen, fehlt nur noch der Inhalt Ihrer Nachricht. \n Diesen schreiben Sie mit der Tastatur in dieses Textfeld:",
                textAlign: TextAlign.center,              
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),  
              ),
            ),
          ),          
          Container(
            height: 70.0,
            width: 45.0,
            child: Image.asset('assets/whatsappnachricht.jpg'),
          ),                      
          Container(
            margin: EdgeInsets.all(15),               
            height: 60,
            color: Colors.white,
            child: Center(
              child: Text(
                "Wenn Ihre Nachricht fertig ist, müssen Sie auf den Pfeil rechts drücken, damit sie gesendet wird.",
                textAlign: TextAlign.center,              
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),  
              ),
            ),
          ),  
          Container(
            margin: EdgeInsets.all(15),               
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: In WhatsApp können auch problemlos Gruppen mit mehreren Personen erstellt werden, die dann alle gemeinsam in einem Chat schreiben können.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 15,                  
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

