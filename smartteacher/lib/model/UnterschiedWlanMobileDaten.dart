import 'package:flutter/material.dart';

class UnterschiedWlanMobileDaten extends StatefulWidget {
  double fontsize;
  UnterschiedWlanMobileDaten({@required this.fontsize});
  @override
  _UnterschiedWlanMobileDatenState createState() => _UnterschiedWlanMobileDatenState(fontsize: fontsize);
}

class _UnterschiedWlanMobileDatenState extends State<UnterschiedWlanMobileDaten> {
  double fontsize;
  _UnterschiedWlanMobileDatenState({@required this.fontsize});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unterschied WLAN/Mobile Daten"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[           
          Container(
            margin: EdgeInsets.all(15),     
           
            color: Colors.white,
            child: Center(
              child: Text("WLAN und mobile Daten ermöglichen den Zugang zum Internet. Der Unterschied ist simpel. Die mobilen Daten werden durch den abgeschlossenen Vertrag bei einem Telefonanbieter zur Verfügung gestellt und können je nach Vertragsvereinbarungen zu Kosten führen. Diese kann man dafür jederzeit und überall verwenden. WLAN ist an bestimmten Orten verfügbar. Viele öffentliche Plätze, wie Bahnhöfe und Kaufhäuser bieten ein kostenloses WLAN an. Je nach Internetnutzung kann es sinnvoll sein, sich zu Hause ein eigenes WLAN einzurichten um Kosten sparen zu können."
                +"Vor allem wenn man viele Videos anschauen möchte, kann sich das lohnen.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
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
