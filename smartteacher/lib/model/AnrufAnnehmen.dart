import 'package:flutter/material.dart';

class AnrufAnnehmen extends StatefulWidget {
  double fontsize;
  AnrufAnnehmen({@required this.fontsize});
    @override
  _AnrufAnnehmenState createState() => _AnrufAnnehmenState(fontsize:fontsize);
}

class _AnrufAnnehmenState extends State<AnrufAnnehmen> {
  double fontsize;
  _AnrufAnnehmenState({@required this.fontsize});
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
            
            color: Colors.white,
            child: Center(
              child: Text(
                "Wenn man angerufen wird, muss man das grüne Telefonsymbol drücken und es nach rechts bis zur Mitte des Bildschirms ziehen. Dabei muss man das Symbol gedrückt halten. Es erscheint ein weißer Kreis um das Symbol.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                    
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
