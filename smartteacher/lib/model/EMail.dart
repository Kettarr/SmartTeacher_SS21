import 'package:flutter/material.dart';

class EMail extends StatefulWidget {
  double fontsize;
  EMail({@required this.fontsize });
  @override
  _EMailState createState() => _EMailState(fontsize: fontsize);
}

class _EMailState extends State<EMail> {
  double fontsize;
  _EMailState({@required this.fontsize});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Was ist eine E-Mail überhaupt?"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[         
          Container(
            margin: EdgeInsets.all(15),                                               // Hilfreich war hier https://stackoverflow.com/questions/58278622/flutter-add-widgets-on-top-and-bottom-to-a-listview
            color: Colors.white,
            child: Center(
              child: Text(
                "E-Mails werden für den digitalen Schriftverkehr verwendet. Vor dem Durchbruch der Mobiltelefone, wurden sie zum Kommunizieren mit Familie und Freunden verwendet. \n Heutzutage verwendet man sie eher um Dokumente zu versenden oder mit Firmen zu kommunizieren. ",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                    
                    color: Colors.black,
                  ),  
              ),
            ),
          ),
          Container(
            height: 70.0,
            width: 45.0,
            child: Image.asset('assets/emaillogo.JPG'),
          ),           
          Container(
            margin: EdgeInsets.all(15),               
          
            color: Colors.white,
            child: Center(
              child: Text(
                "Sie öffnen auf Ihrem Smartphone die E-Mail App, indem Sie auf folgendes Symbol drücken:",
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
            height: 130.0,
            width: 45.0,
            child: Image.asset('assets/email.jpg'),
          ),   
          Container(
            margin: EdgeInsets.all(15),               
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Tipp: Wenn Sie die E-Mail App zum ersten Mal öffnen, müssen Sie sich mit Ihrer E-Mail Adresse und Ihrem Passwort anmelden.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize-0.2,
              style: TextStyle(
                              
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
