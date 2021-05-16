import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Apperklaerung.dart';
import 'package:smartteacher/model/UnterschiedWlanMobileDaten.dart';

class Begriffserklaerung extends StatefulWidget {
  @override
  _BegriffserklaerungState createState() => _BegriffserklaerungState();
}

class _BegriffserklaerungState extends State<Begriffserklaerung> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Begriffserklaerung"),
        centerTitle: true,       
      ),
      body: ListView(
          children: <Widget> [
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,                 
                 child:  RaisedButton(                   
                   onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Apperklaerung()), 
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was genau bedeutet App?", textScaleFactor: 1.5,
                      )                                                           
                ),    
              ),              
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,                 
                 child: RaisedButton(                   
                   onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UnterschiedWlanMobileDaten()), 
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist der Unterschied zwischen WLAN und mobilen Daten?",textAlign: TextAlign.center, textScaleFactor: 1.5,
                      )                                        
                ),       
                ), 
                                                           
          ],  
      ),
    );
  }
}