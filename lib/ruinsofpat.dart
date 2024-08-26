import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class ruinsOfPatliputra extends StatelessWidget{
  var ruins=[
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUoTGoy6om-rV5AddCTaqRehT8ObluQZgYQg&s"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjvY9qtF-rVJA8hjxGty1QHOP0jGMcGpFFPA&s"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHsCoiXmVmAMgbn_JwZG5IB4GcXWDOQLCHzg&s"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb1686LyR-Qj8gNe8Ti4vicThNQicF8wXBwg&s"
    }

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd54583),
        title: Text(" Ruins of patna"),
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
                  itemCount: ruins.length,
                  itemBuilder: (_, i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                      ),


                      child: ClipOval(
                          clipBehavior: Clip.antiAlias,


                          child: Image.network(ruins[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
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
                  Text("Ruins of Patna", style: TextStyle(
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
                  Text("4.6(199 reviews)")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              width: 400,
              height: 100,
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [Text("Location: Kumrahar "),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Entry fee:20" ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TIMINGS:10 AM to 4 PM"),
                ],
              ),
            ),
            Divider(
              height: 2,
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
              //height: 600,
              child: Text("Lying just a little distance away from the current city of Patna are the ruins of its predecessor – Pataliputra. The city that was ruled by 3 legendary kings – Ajatshatru, Chandragupta and Ashoka – is today just a pile of rubble, sandstone pillars, wood platforms that may have supported a staircase, foundation bricks of a Buddhist monastery and carved stone pieces. But don’t let this description dissuade you from visiting the ruins (better known locally as Kumhrar) of what was once the center of power, trade, arts and learning in ancient India.  You’ll be in good company as this is one of the most popular tourist places in Bihar, attracting visitors from around the globe.",
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