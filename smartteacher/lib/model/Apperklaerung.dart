import 'package:flutter/material.dart';

class Apperklaerung extends StatefulWidget {
  double fontsize;
  Apperklaerung({@required this.fontsize});
  @override
  _ApperklaerungState createState() => _ApperklaerungState(fontsize: fontsize);
}

class _ApperklaerungState extends State<Apperklaerung> {
  double fontsize;
  _ApperklaerungState({@required this.fontsize});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        centerTitle: true,        
      ),
      body: ListView(
        children: <Widget>[           
          Container(
            margin: EdgeInsets.all(15),     
           
            color: Colors.white,
            child: Center(
              child: Text(
                "Bei einer App handelt es sich um ein Programm, welches man sich über den so genannten App-Store auf sein Handy laden kann.",
                textAlign: TextAlign.center,
                textScaleFactor: fontsize,
              style: TextStyle(
                   
                    color: Colors.black,
                  ),  
              ),
            ),
          ),                  
           Container(
            height: 150.0,
            width: 40.0,
            child: Image.asset('assets/Google_Play_Store.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(15),
           
            width: 40.0,
            child: Text("So sieht das App-Store Symbol aus, manchmal wird er auch als Google Play Store bezeichnet.",
             textAlign: TextAlign.center, 
             textScaleFactor: fontsize,
             style: TextStyle(
                   
                    color: Colors.black,
                  ),  
             ),
          ),
        ]
      ),
     
    );
  }
}
