import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class park extends StatelessWidget{
  var parkimage=[
    {
      "image":"https://travelsetu.com/apps/uploads/new_destinations_photos/destination/2024/01/06/bd3469d6cde3dd1157f540c570b33826_1000x1000.jpg",
    },
    {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZnc8VK9mj8lg6P_f3GeTFaEUdHxnRhLqICA&s"
    },
    {
      "image":"https://content.jdmagicbox.com/comp/muzaffarpur/b3/9999px621.x621.141223181910.p5b3/catalogue/jubba-sahni-park-muzaffarpur-ho-muzaffarpur-tourist-attraction-aytqf4m-250.jpg"
    },
    {
      "image":"https://www.holidify.com/images/cmsuploads/compressed/Jubba_Sahni_Park_20181214151629.jpg"
    }
  ] ; @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Jubba Shani Park "),
        centerTitle: true,
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
                itemCount: parkimage.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (c,i){
                return Container(
                  child:ClipRRect(
                    child: Container(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(parkimage[i]["image"].toString()),
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
                  Text("jubba  shani park", style: TextStyle(
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
                  Text("4.2 (500 reviews)",style: TextStyle(
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
                  Text("Location:Mithanpura chowk", style: TextStyle(
                    fontSize: 18
                  ),),

                  Text("Timing:5 am to 8pm\nEntry fee:free", style: TextStyle(
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
              child: Text("Jubba Sahni Park is a well:known public park located in the Kadam Kuan area of Patna, Bihar, India. The park is named after Jubba Sahni, a freedom fighter and social worker who played an important role in India's independence movement. This park, which was inaugurated in his memory in 1985, covers a sprawling area and features several amenities.", style: TextStyle(
                fontSize: 18
              ),),
            )
          ],
        ),
      ),


    );
  }
  }