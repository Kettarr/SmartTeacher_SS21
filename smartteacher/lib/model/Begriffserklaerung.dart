import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Apperklaerung.dart';
import 'package:smartteacher/model/UnterschiedWlanMobileDaten.dart';

// ignore: must_be_immutable
class Begriffserklaerung extends StatefulWidget {
  double fontsize;
  Begriffserklaerung({@required this.fontsize});
  @override
  _BegriffserklaerungState createState() => _BegriffserklaerungState(fontsize: fontsize);
}

class _BegriffserklaerungState extends State<Begriffserklaerung> {
  double fontsize;
  _BegriffserklaerungState({@required this.fontsize});
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
                        MaterialPageRoute(builder: (context) => Apperklaerung(fontsize: fontsize,)), 
                     );                       
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was genau bedeutet App?", textScaleFactor: fontsize,
                      )                                                           
                ),    
              ),              
            SizedBox(height: 20),
            Container(
            
              width: 400,                 
                 child: RaisedButton(                   
                   onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UnterschiedWlanMobileDaten(fontsize: fontsize)), 
                     );                     
                   },
                   color: Colors.blue[100],
                   child: Text(
                     "Was ist der Unterschied zwischen WLAN und mobilen Daten?",textAlign: TextAlign.center, textScaleFactor: fontsize,
                      )                                        
                ),       
                ), 
                                                           
          ],  
      ),
    );
  }
}