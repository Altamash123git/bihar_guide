import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class golghar extends StatelessWidget{
  var ghar=[
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIWrqhhXgVoc0DkoMC4AtWRu-RTevRs3BFQA&s"
    },
    {
      "image":"https://upload.wikimedia.org/wikipedia/commons/a/ad/Golghar%2C_Patna%2C_1888.jpg?20080617101458"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZSpFWO264mPP9KHHBYce4NdH1Dlh94_7sbQ&s"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffd54583),
        title: Text(" Gol ghar, Patna"),
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
                itemCount: ghar.length,
                  itemBuilder: (_, i){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                  ),

                  
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,


                      child: Image.network(ghar[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
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
                  Text("GOL GHAR", style: TextStyle(
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
                children: [Text("ADDRESS:Golghar Chowrah, Ashok Rajpath, \nChajju Bagh, patna "),
                  SizedBox(
                    height: 10,
                  ),
                  Text("CONTACT:PHONE", ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TIMINGS:9:30 AM to 6 PM"),
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
              child: Text("Originally built as a granary to be used as a storehouse, \nGol Ghar looks like a beehive from a distance.\nA massive structure in itself, it was built by Captain John Garstin for the British army in 1786. This move was propelled by the severe famine of 1770 that did a lot of damage. It is 105 feet tall and offers beautiful view of the entire city along with the River Ganges. ",
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