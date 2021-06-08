


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartteacher/main.dart';





class Menu extends StatefulWidget{
  Menu({Key key, @required this.fontsize});

  double fontsize;

  @override
  _Menu createState() => _Menu( fontsize: fontsize);
}


String getString(fontsize){
  String result = "no fontsize found";
  if(fontsize == 1.5)
    result = "klein";
    if(fontsize == 1.7)
    result = "mittel";
    if(fontsize == 2.0)
    result = "groß";
  
  return result;
}



class _Menu extends State<Menu>{
  
  double fontsize;
  

  _Menu({@required this.fontsize});

  get onWillPop => null;
  
  
  @override
  Widget build(BuildContext context) {

      return Scaffold(
       appBar: AppBar(
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop:(){
          Navigator.pop(context, fontsize);
          return new Future(() => false);
        },
       
        child:(
          ListView(
            children: [
              SizedBox(height: 50),
              ListTile(
                  tileColor: Colors.blue[100],
                 leading: Text("Schriftgröße", textScaleFactor: fontsize,),
                 
                trailing:Text(getString(fontsize), textScaleFactor: fontsize, style: TextStyle(color:Colors.blue ),),
                onTap: () {
                   showDialog(context: context, builder: (context){
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 250,
                                height: 80,
                                child: RaisedButton(
                                  color: Colors.blue[100],
                                  child: Text(getString(1.5), textScaleFactor: 1.5),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 1.5;
                                    });
                                    Navigator.pop(context);
                                  }
                                ),

                               ),
                               SizedBox(height: 20),
                               Container(
                                margin: EdgeInsets.all(10),
                                width: 250,
                                height: 80,
                                child: RaisedButton(
                                  color: Colors.blue[100],
                                  child: Text(getString(1.7), textScaleFactor: 1.7),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 1.7;
                                    });
                                    Navigator.pop(context);
                                  }
                                ),

                               ),
                               SizedBox(height: 20),
                               Container(
                                margin: EdgeInsets.all(10),
                                width: 250,
                                height: 80,
                                child: RaisedButton(
                                  color: Colors.blue[100],
                                  child: Text(getString(2.0), textScaleFactor: 2.0),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 2.0;
                                    });
                                    Navigator.pop(context);
                                  }
                                ),

                               ),
                               SizedBox(height: 20),
                              Container(
                                child: Text("Tipp: Auf die gewünschte Größe drücken.", textScaleFactor: fontsize-0.2, textAlign: TextAlign.center,)
                                
                              )
                            ],
                            
                          )
                          
                            
                            
                          ),
                        );

                },
                );
                }
                 
                      
          
                
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                child: Text("Tipp: Um die Schriftgröße zu ändern drücken Sie auf das hellblaue Feld mit der Beschriftung Schriftgröße.",
                 textScaleFactor: fontsize-0.2,)

              )

            ],


          )

        )

        
       
      
      ),
      );
  
      
   
  }


}