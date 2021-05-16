import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Was ist WhatsApp überhaupt?"),
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
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "WhatsApp ist einer der beliebtesten Nachrichtendienste für Smartphones. Es kann kostenlos verwendet werden und man kann auch Bilder und Videos damit versenden und telefonieren. ",
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
            height: 85,
            color: Colors.white,
            child: Center(
              child: Text(
                "WhatsApp verwendet dafür Ihre Internetverbindung, je nach Vertrag können hier Kosten entstehen. Am besten verwenden Sie es mit einer Wlan Verbindung. ",
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
            height: 80,
            color: Colors.white,
            child: Center(
              child: Text(
                "Sie öffnen auf Ihrem Smartphone WhatsApp, indem Sie auf folgendes Symbol drücken:",
                textAlign: TextAlign.center,
              style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,                    
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 80.0,
            width: 45.0,
            child: Image.asset('assets/whatsapplogo.JPG'),
          ), 
          Container(
            margin: EdgeInsets.all(15),               
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Wenn Sie WhatsApp zum ersten Mal öffnen, müssen Sie sich mit Ihrer Telefonnummer anmelden.",
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

