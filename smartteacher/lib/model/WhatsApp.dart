import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  double fontsize;
  WhatsApp({@required this.fontsize});

  @override
  _WhatsAppState createState() => _WhatsAppState(fontsize: fontsize);
}

class _WhatsAppState extends State<WhatsApp> {
  double fontsize;
  _WhatsAppState({@required this.fontsize});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Was ist WhatsApp überhaupt?"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[
          Container(
            
            color: Colors.white,
          ),            
          Container(
            margin: EdgeInsets.all(15),               
             
            color: Colors.white,
            child: Center(
              child: Text(
                "WhatsApp ist einer der beliebtesten Nachrichtendienste für Smartphones. Es kann kostenlos verwendet werden und man kann auch Bilder und Videos damit versenden und telefonieren. ",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                    
                    color: Colors.black,
                  ),  
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),               
             
            color: Colors.white,
            child: Center(
              child: Text(
                "WhatsApp verwendet dafür Ihre Internetverbindung, je nach Vertrag können hier Kosten entstehen. Am besten verwenden Sie es mit einer Wlan Verbindung. ",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                    
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                             
          Container(
            margin: EdgeInsets.all(15),               
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Sie öffnen auf Ihrem Smartphone WhatsApp, indem Sie auf folgendes Symbol drücken:",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                    
                    color: Colors.black,
                    fontWeight: FontWeight.bold,                    
                  ),  
              ),
            ),
          ),                    
          Container(
            height: 60,
            width: 45.0,
            child: Image.asset('assets/whatsapplogo.JPG'),
          ), 
          Container(
            margin: EdgeInsets.all(15),               
             
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Wenn Sie WhatsApp zum ersten Mal öffnen, müssen Sie sich mit Ihrer Telefonnummer anmelden.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
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

