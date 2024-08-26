

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class converter extends StatefulWidget{
  @override
  State<converter> createState() => _converterState();
}

class _converterState extends State<converter> {
  TextEditingController  heightconverter= TextEditingController();

  var convert;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar:  AppBar(
       title:  Text("converter "),
       backgroundColor: Colors.blue,
       centerTitle: true,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextField(
               controller: heightconverter,
               decoration:  InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),
                 suffix: Text("in feet"),
                 hintText: "enter height in foot",

               ),
             ),
           ),
           ElevatedButton(

               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.greenAccent
               ),

               onPressed: (){
             _heightconvert(height: heightconverter.text.toString());
           }, child: Text("convert")),
           convert==null? Text(""): Text(" ${convert.toStringAsFixed(2)} meter")
         ],
       ),
     ),
   );

  }
  _heightconvert({ required height}){
    if(height==""){
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("please enter height to convert"),
        backgroundColor: Colors.red,
      ));
    } else {
      final double Height= double.parse(height.toString());
      setState(() {
        convert=(Height*2.54*12)/100;
      });
    }

  }
}