import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class chotidargah extends StatelessWidget{
  var dargah=[
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-joYK5ducX6STN7a-0cI6EQl3YqndMpX49A&s"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3WiK0RSLU-u8WL8QZkB5oKJQymwpP3odwvw&s"
    },
    {
      "image":"https://img.nayatrip.com/images/sightseeing/big/4856.jpg"
    },{
    "image":"https://images.news18.com/ibnkhabar/uploads/2022/05/Maner-4-j-16515454133x2.jpg?impolicy=website&width=400&height=300"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffd54583),
        title: Text("Choti dargah"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  //color: Color(0XFFF2B9E1),
                  color: Colors.grey
              ),

              width: 300,
              height: 400,
              child: ListView.builder(
                //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: dargah.length,
                  itemBuilder: (_, i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                      ),


                      child: ClipOval(
                          //clipBehavior: Clip.antiAlias,


                          child: Image.network(dargah[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
                      height: 350,
                      width: 270,

                      //color: Colors.yellow,

                    );
                  }
              ),





            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choti Dargah", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22
                  ),),
                  Text("show Map",style: TextStyle(
                      color: Colors.blue
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(8),

              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Text("4.5(2000 reviews)")
                ],
              ),
            ),
            Container(

              width: 400,
              height: 150,
              //alignment: Alignment.bottomLeft,
              child: Column(
                children: [Text("ADDRESS:Manar, Patna"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Timing:NA", ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("ENTRY FEE:free"),
                ],
              ),
            ),
            Divider(
              height: 3,
            ),
            Text("History and information", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19
            ),),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0XFFFFC9B4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 2
                  )
              ),
              margin: EdgeInsets.all(20),
              width: 400,
              //height: 400,
              child: Text("Just 32 km west of Patna lies one of the finest and least known Mughal structures in India – the Choti Dargah of Maner. A magnificent three-storied structure, the mausoleum was erected in 1616 in honor of the Sufi saint Makhdoom Shah Daulat who passed away in Maner and was buried here. Its beautiful dome flanked by four twelve-sided minarets, age-old walls adorned with exquisite motifs and ceilings inscribed with passages from the Quran make for memorable viewing.  ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                ),),
            )
          ],

        ),
      ),
    );
  }
}