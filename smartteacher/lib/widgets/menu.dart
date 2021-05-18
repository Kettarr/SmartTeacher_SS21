


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Menu extends StatefulWidget{


  @override
  _Menu createState() => _Menu();
}




class _Menu extends State<Menu>{

  
  double textscalefactor = 1.5;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Menü"),
        centerTitle: true,
      ),
      body:Builder(
        builder: (BuildContext context){
          return ListView(
            children: [
              SizedBox(height: 50),
              ListTile(
                leading: Text("Schriftgröße", textScaleFactor: textscalefactor,),
                trailing: TextButton(
                  child: Text((textscalefactor*10).toString(), textScaleFactor: textscalefactor,),
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        content: SingleChildScrollView(
                          
                          child: TextField(
                            decoration: new InputDecoration(labelText: "Schriftgröße eingeben"),
                            onSubmitted: (var value){
                              setState((){
                                 textscalefactor = double.parse(value)/10;
                              });
                            Navigator.pop(context);
                                
                                
                              

                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              FilteringTextInputFormatter.deny(RegExp(r'^[3-9]| 0 |\d{3}')),
                              
                              ],
                            )
                            
                            
                          ),
                        );

                      

                    },
                    );
                  },
                ),
              ),
              ListTile(

              ),
            ],


          );


        }
       
      
      ),
    );
  }


}