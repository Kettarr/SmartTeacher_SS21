import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Teacher',
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
      home: Startpage(),
    );
  }
}

class Startpage extends StatefulWidget {
  Startpage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _StartpageState createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
 

  
  

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
        title: Text("SmartTeacher"),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [

             SizedBox(height: 70),
            Container(
              height: 80,
              width: 400,
              
               child: Container(
                 
                 child: RaisedButton(
                   color: Colors.blue[100],

                   child: Text('Telefonieren'),
                    onPressed:() {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nachrichten()),
                        ); 

                     /*tileColor: Colors.blue[100] ,
                     title: Text('Telefonieren'),
                     trailing: Icon(Icons.call),*/
                     
                     /*onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nachrichten()),
                        );  }*/
                ),      
               ),
            ),
            SizedBox(height: 20),
             Container(
              height: 80,
              width: 400,
           
               child: Center(
                 child: ListTile(
                     tileColor: Colors.blue[100] ,
                     title: Text('Nachrichten'),
                     
                     trailing: Icon(Icons.mail),
                     /*onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nachrichten()),
                        );
                      }*/
                ),      
               ),
            ),
             SizedBox(height: 20),
             Container(
              height: 80,
              width: 400,
          
               child: Center(
                 child: ListTile(
                     tileColor: Colors.blue[100] ,
                     title: Text('Icon Quiz'),
                     trailing: Icon(Icons.contact_support),
                     /*onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nachrichten()),
                        );  }*/
                ),      
               ),
            ),


          ],  
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        
      ),
     
    );
  }
}
