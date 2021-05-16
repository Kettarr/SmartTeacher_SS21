import 'package:flutter/material.dart';

class Anrufen extends StatefulWidget {
  @override
  _AnrufenState createState() => _AnrufenState();
}

class _AnrufenState extends State<Anrufen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wie ruft man jemanden an?"),
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
                "Um eine Person anzurufen, muss man in den Kontakten die gewünschte Nummer wählen. Dabei sucht man den Namen und streicht diesen von links nach rechts. Dabei wird der Name grün hinterlegt.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),  
              ),
            ),
          ),
          Container(
            height: 200.0,
            width: 100.0,
            child: Image.asset('assets/anrufen.jpeg'),
          ),            
          Container(
            margin: EdgeInsets.all(15),               
            height: 170,
            color: Colors.white,
            child: Center(
              child: Text(
                "Eine weitere Möglichkeit ist, über die Information des Kontakts jemanden anzurufen. Dabei tippt man auf den Kontakt und kommt auf eine nähere Ansicht des Kontakts. Dort gibt es unter dem Namen und der Telefonnummer ein grünes Telefonsymbol. Wenn man auf dieses drückt, ruft man die gewünschte Person an.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,                  
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 200.0,
            width: 100.0,
            child: Image.asset('assets/anrufen2.jpeg'),
          ),
          Container(
            margin: EdgeInsets.all(15),               
            height: 90,
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Sie können natürlich auch direkt eine Telefonnummer wählen und anrufen, ohne sie bei den Kontakten eingespeichert zu haben. Dazu tippen Sie die Nummer in der Telefon App ein und klicken auf das grüne Telefonsymbol.",
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
