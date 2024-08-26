import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class  boseMemorail extends StatelessWidget{
  var memorial=[
    {
      "image":"https://www.holidify.com/images/cmsuploads/compressed/1493879674590acb7a347f6_20181214153527.jpg"
    },
    {
      "image":"https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Khudiram_Bose_1905.jpg/800px-Khudiram_Bose_1905.jpg"
    },
    {
      "image":"https://thumbs.dreamstime.com/b/khudiram-bose-sculpture-shaheedi-park-delhi-india-315515897.jpg"
    },
    {
      "image":"https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Revolutionary%2C_Khudiram_Bose_as_a_captive.jpg/220px-Revolutionary%2C_Khudiram_Bose_as_a_captive.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.pinkAccent,
       title: Text(
         "khudiram Bose Mmemorial", style: TextStyle(
         fontSize: 22,
         fontWeight: FontWeight.bold,
       ),

       ),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             margin: EdgeInsets.all(15),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),

             ),
             //color: Colors.yellowAccent,
             height: 200,
             child: ListView.builder(
                 itemCount: memorial.length,
                 scrollDirection: Axis.horizontal,

                 itemBuilder: (c,i){
                   return Container(
                       child:ClipRRect(
                         child: Container(
                           child: CircleAvatar(
                             radius: 100,

                             backgroundImage: NetworkImage(memorial[i]["image"].toString(), ),
                           ),
                           alignment: Alignment.center,
                           constraints: const BoxConstraints(

                             maxWidth: 260,
                             maxHeight: 250,

                           ),
                         ),
                       )


                   );
                 }),

           ),
           Container(
             margin: EdgeInsets.all(15),
             padding: EdgeInsets.all(10),

             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Bose Mmeorial", style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w500,
                 ),),
                 Text("Show Map", style: TextStyle(
                     color: Colors.blue
                 ),)
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.all(15),
             child: Row(
               children: [
                 Icon(Icons.star, color: Colors.yellow,),
                 Text("4.9 (500 reviews)",style: TextStyle(
                     fontSize: 16
                 ),),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
             alignment: Alignment.bottomLeft,
             child: Column(
               children: [
                 Text("Location:Suttapatti, Pokhraira,", style: TextStyle(
                     fontSize: 18
                 ),),

                 Text("Timing:24 hours\nEntry fee:free", style: TextStyle(
                   fontSize: 18,
                 ),),

               ],
             ),

           ),
           TextButton(


             onPressed: (){}, child: Text("Add to Bucket List", style: TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.bold,
               color: Colors.black54
           ),),
             style: TextButton.styleFrom(
                 elevation: 20,

                 backgroundColor: Colors.greenAccent
             ),
           ),
           Container(
             margin: EdgeInsets.all(15),
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(
                     width: 3
                 )
             ),
             child: Text(" The Khudiram Bose Memorial is located in Muzaffarpur, Bihar, on the banks of the Budhi Gandak River. Khudiram Bose was a Bengali revolutionary who was involved in the Indian independence movement. He was arrested and executed by the British in 1908 when he was only 18 years old. The memorial was built in his memory to commemorate his contribution to the struggle for independence. ",style: TextStyle(
                 fontSize: 20
             ), ),
           )
         ],
       ),
     ),

   );
  }

}