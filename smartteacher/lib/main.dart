import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartteacher/model/Begriffserklaerung.dart';
import 'package:smartteacher/widgets/iconquiz.dart';
import 'package:smartteacher/widgets/menu.dart';

import 'model/Nachrichten.dart';
import 'model/Telefonieren.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    

    return MaterialApp(
      title: 'Smart Phone Teacher',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Startpage(fontsize: 1.5,),
    );
  }
}

// ignore: must_be_immutable
class Startpage extends StatefulWidget {
  Startpage({Key key, @required this.fontsize}) : super(key: key);
  double fontsize = 1.5;


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _StartpageState createState( ) => _StartpageState(fontsize: fontsize);
}

class _StartpageState extends State<Startpage> {
 

  double fontsize;

  _StartpageState({@required this.fontsize});
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("SmartPhoneTeacher"),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              tooltip: "Menü",
              icon: Icon(Icons.menu, color: Colors.white,),
              onPressed: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu(fontsize: fontsize)),
                );
                setState(() {
                  fontsize = result;
                });
              },

            );
          }
        )
        

       
        
      ),
      body: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [

            SizedBox(height: 70),
            Container(
              height: 80,
              width: 400,
                 
                 child: RaisedButton.icon(
                   
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Telefonieren(fontsize: fontsize)),   
                        );                  
                   },
                   icon: Icon(Icons.phone, size: 30),
                   color: Colors.blue[100],
                   label: Text(
                     "Telefonieren", textScaleFactor: fontsize,
                      ),
                    
                   
                    
                ),       
                     
                     
                  
                ), 
              SizedBox(height: 20),     
              Container(
              height: 80,
              width: 400,
                 
                  child: RaisedButton.icon(
                   
                   onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nachrichten(fontsize: fontsize,)),
                     );
                   },
                   icon: Icon(Icons.message, size: 30),
                   color: Colors.blue[100],
                   label: Text(
                     "Nachrichten", textScaleFactor: fontsize,
                      )
                    
                   
                    
                ),       
              ),
            SizedBox(height: 20),
            Container(
              height: 80,
              width: 400,
                 
                 child:  RaisedButton.icon(
                   
                   onPressed:() {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Iconquiz(fontsize: fontsize,)),
                        );
                   },
                   icon: Icon(Icons.contact_support, size: 30),
                   color: Colors.blue[100],
                   label: Text(
                     "Icon Quiz", textScaleFactor: fontsize,
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
                        MaterialPageRoute(builder: (context) => Begriffserklaerung(fontsize: fontsize)),
                     );
                   },
                   
                   color: Colors.blue[100],
                   child: Text(
                     "Begriffserklärung", textScaleFactor: fontsize,
                      )
                    
                   
                    
                ),       
              ),
          
                


          ],  
        ),
        
        
      ),
     
    );
  }
}
