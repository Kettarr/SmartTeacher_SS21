import 'package:flutter/material.dart';

class SmsVerfassen extends StatefulWidget {
  @override
  _SmsVerfassenState createState() => _SmsVerfassenState();
}

class _SmsVerfassenState extends State<SmsVerfassen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eine SMS verfassen"),
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
            height: 60,
            color: Colors.white,
            child: Center(
              child: Text(
                "Indem Sie in der Nachrichten App auf folgendes Symbol drücken, können Sie eine Nachricht schreiben.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,                    
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 60.0,
            width: 50.0,
            child: Image.asset('assets/merged.jpg'),
          ),
          /*Container(
            height: 20,
            color: Colors.white,
            child: Center(
              child: Text(
                "(Je nach Smartphone Modell kann dieses Zeichen anders aussehen.)",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 12,                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ), */
          Container(
            margin: EdgeInsets.all(15),               
            height: 130,
            color: Colors.white,
            child: Center(
              child: Text(
                "Als nächstes müssen Sie auswählen, an wen Sie die Nachricht senden wollen. Sie können entweder direkt die Telefonnummer eingeben oder jemanden aus Ihren Kontakten wählen. \n Eine Nachricht kann gleichzeitig an mehrere Personen versendet werden.",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                         
          Container(
            height: 110.0,
            width: 70.0,
            child: Image.asset('assets/empfaenger.jpg'),
          ),          
          Container(
            margin: EdgeInsets.all(15),               
            height: 60,
            color: Colors.white,
            child: Center(
              child: Text(
                "Jetzt fehlt nur noch der Inhalt Ihrer Nachricht. \n Diesen schreiben Sie mit der Tastatur in dieses Textfeld:",
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
            child: Image.asset('assets/smsnachricht.jpg'),
          ),            
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            color: Colors.white,
            child: Center(
              child: Text(
                "Sobald Ihre Nachricht fertig ist, müssen Sie auf den Pfeil drücken, damit sie gesendet wird.",
                textAlign: TextAlign.center,              
              style: TextStyle(
                    fontSize: 17,
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
