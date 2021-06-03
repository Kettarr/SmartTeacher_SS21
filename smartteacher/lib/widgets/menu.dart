


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




class _Menu extends State<Menu>{
  String examplestring = "aktuelle Größe";
  double fontsize;

  _Menu({@required this.fontsize});

  get onWillPop => null;
  
  
  @override
  Widget build(BuildContext context) {

      return Scaffold(
       appBar: AppBar(
        title: Text("Menü"),
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
                leading: Text("Schriftgröße", textScaleFactor: fontsize),
                trailing: TextButton(
                  child: Text(examplestring, textScaleFactor: fontsize,),
                  onPressed: () {
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
                                  child: Text(examplestring, textScaleFactor: 1.5),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 1.5;
                                    });
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
                                  child: Text(examplestring, textScaleFactor: 1.7),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 2.0;
                                    });
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
                                  child: Text(examplestring, textScaleFactor: 2.0),
                                  onPressed: () { 
                                    setState(() {
                                      fontsize = 2.5;
                                    });
                                  }
                                ),

                               ),
                            ],
                            
                          )
                          
                            
                            
                          ),
                        );

                      

                    },
                    );
                  },
                ),
              ),

            ],


          )

        )

        
       
      
      ),
      );
  
      
   
  }


}