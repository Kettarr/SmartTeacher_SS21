import 'package:flutter/material.dart';

class Sms extends StatefulWidget {
  Sms({@required this.fontsize});
  double fontsize;

  @override
  _SmsState createState() => _SmsState(fontsize: fontsize);
}

class _SmsState extends State<Sms> {
  double fontsize;
  _SmsState({@required this.fontsize});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Was ist eine SMS überhaupt?"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 10,
            color: Colors.white,
          ),             
          Container(
            margin: EdgeInsets.all(15),                                               // Hilfreich war hier https://stackoverflow.com/questions/58278622/flutter-add-widgets-on-top-and-bottom-to-a-listview
           
            color: Colors.white,
            child: Center(
              child: Text(
                "SMS steht für Short Message Service, heißt also soviel wie Kurznachrichtendienst. SMS sind in der Umgangssprache Kurznachrichten, die zwischen Telefonen verschickt werden können.  \n \n Je nach Vertrag ist das Verschicken solcher SMS kostenpflichtig. Daher wurden sie größtenteils von Nachrichten über Dienste, die das Internet verwenden, wie etwa WhatsApp, ersetzt. ",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                   
                    color: Colors.black,
                  ),  
              ),
            ),
          ),
          Container(
            height: 20,
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.all(15),               
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "Sie öffnen auf Ihrem Smartphone die Nachrichten (=SMS) App, indem Sie auf folgendes Symbol drücken:",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                   
                    color: Colors.black,
                    fontWeight: FontWeight.bold,                    
                  ),  
              ),
            ),
          ),  
          SizedBox(
            height: 30,

          ),             
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset('assets/smslogomarked.jpg'),
          ),   
        ]
      ),
     
    );
  }
}
