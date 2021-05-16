import 'package:flutter/material.dart';

class AnrufAuflegen extends StatefulWidget {
  @override
  _AnrufAuflegenState createState() => _AnrufAuflegenState();
}

class _AnrufAuflegenState extends State<AnrufAuflegen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wie legt man auf?"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[           
          Container(
            margin: EdgeInsets.all(15),    
            height: 80,
            color: Colors.white,
            child: Center(
              child: Text(
                "Einen Anruf kann man einfach beenden, indem man das rote Telefonsymbol drückt.",
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
            child: Image.asset('assets/anrufauflegen.jpeg'),
          ),   
        ]
      ),
     
    );
  }
}
