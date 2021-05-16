import 'package:flutter/material.dart';

class AnrufTastatur extends StatefulWidget {
  @override
  _AnrufTastaturState createState() => _AnrufTastaturState();
}

class _AnrufTastaturState extends State<AnrufTastatur> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tastatur während einem Anruf"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[           
          Container(
            margin: EdgeInsets.all(15),     
            height: 170,
            color: Colors.white,
            child: Center(
              child: Text(
                "Da während bestimmten Telefonaten, wie beim Abrufen der Mobilbox, eine Tastatur benötigt wird, bietet das Smartphone die Möglichkeit jederzeit die Tastatur aufzurufen. \n Dafür drückt man auf dem Bildschirm während des Telefonats das Symbol Tastatur. Danach kann man die gewünschten Ziffern in das Telefon tippen.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                  
          Container(
            height: 400.0,
            width: 100.0,
            child: Image.asset('assets/anruftastatur.JPG'),
          ),
          Container(
            margin: EdgeInsets.all(15),               
            height: 90,
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Um leichter während einem Anruf etwas eintippen zu können und gleichzeitig den Anruf zu hören, können Sie das Lautsprecher Symbol drücken. Dann hören Sie den Gesprächspartner lauter und verstehen ihn ohne das Handy am Ohr zu haben.",
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
