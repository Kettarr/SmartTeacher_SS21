import 'package:flutter/material.dart';

class AnrufAuflegen extends StatefulWidget {
  double fontsize;
  AnrufAuflegen({@required this.fontsize});
  @override
  _AnrufAuflegenState createState() => _AnrufAuflegenState(fontsize: fontsize);
}

class _AnrufAuflegenState extends State<AnrufAuflegen> {
  double fontsize;
  _AnrufAuflegenState({@required this.fontsize});
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
            
            color: Colors.white,
            child: Center(
              child: Text(
                "Einen Anruf kann man einfach beenden, indem man das rote Telefonsymbol drückt.",
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
            child: Image.asset('assets/anrufauflegen.jpeg'),
          ),   
        ]
      ),
     
    );
  }
}
