import 'package:flutter/material.dart';

class EMailVerfassen extends StatefulWidget {
  @override
  _EMailVerfassenState createState() => _EMailVerfassenState();
}

class _EMailVerfassenState extends State<EMailVerfassen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eine E-Mail versenden"),
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
                "Um eine E-Mail schreiben zu können, drücken Sie in Ihrer E-Mail App auf das Plus oder manchmal auch Stift Symbol. Dann sehen Sie folgendes:",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,                  
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 240.0,
            width: 45.0,
            child: Image.asset('assets/emailverfassen.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(15),               
            height: 210,
            color: Colors.white,
            child: Center(
              child: Text(
                "Im \"Von:\" Feld steht automatisch Ihre eigene E-Mail Adresse. \n In das \"An:\" Feld müssen Sie die E-Mail Adresse der gewünschten Person oder Firma schreiben. Der Betreff sollte klar stellen worum es in Ihrer E-Mail geht. Wenn Sie die E-Mail fertig verfasst haben, klicken Sie auch hier auf den Pfeil um sie abzusenden.",
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
                "Tipp: E-Mails können gleichzeitig an mehrere Personen/Firmen versandt werden. Wenn Sie auf die Büroklammer drücken, können Sie Medien (Bilder, Dokumente, etc.) auswählen, die mit der E-Mail mitgesendet werden sollen.",
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
