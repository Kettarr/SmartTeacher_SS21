import 'package:flutter/material.dart';

class AnrufAnnehmen extends StatefulWidget {
  @override
  _AnrufAnnehmenState createState() => _AnrufAnnehmenState();
}

class _AnrufAnnehmenState extends State<AnrufAnnehmen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wie nimmt man einen Anruf an?"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[          
          Container(
            margin: EdgeInsets.all(15),   
            height: 120,
            color: Colors.white,
            child: Center(
              child: Text(
                "Wenn man angerufen wird, muss man das grüne Telefonsymbol drücken und es nach rechts bis zur Mitte des Bildschirms ziehen. Dabei muss man das Symbol gedrückt halten. Es erscheint ein weißer Kreis um das Symbol.",
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
            child: Image.asset('assets/anrufannehmen.JPG'),
          ),   
        ]
      ),
     
    );
  }
}
