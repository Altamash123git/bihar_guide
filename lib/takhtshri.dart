import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class Takhtshri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var guru=[
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3zLSmv3c-NF3jU7xGdjyhk_yUR_QIwKSd7A&s"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQfGDXNmZHku646x89ia_G63W9fHhxlJ1FCw&s"
      },{
      "image":"https://takhatpatnasahib.in/en/assets/designer/themes/default/images/five-takhat-1.jpg"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmKhR-5-nHjaRNfUOX2vSDLNekxg7rzYSy9w&s"
      },
    ];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffd54583),
        title: Text(" Takht Shri Gurudwara"),
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
                  itemCount: guru.length,
                  itemBuilder: (_, i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                      ),


                      child: ClipOval(
                          clipBehavior: Clip.antiAlias,


                          child: Image.network(guru[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
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
                  Text("Takht Shri Patna Sahib", style: TextStyle(
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
                  Text("4.2(1000 reviews)")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              width: 400,
              height: 100,
              //alignment: Alignment.bottomLeft,
              child: Column(
                children: [Text("Location: Mithapur "),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Entry fee:free" ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TIMINGS:NA"),
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
              height: 600,
              child: Text("Patna is revered by the followers of the Sikh religion as this is the place where the 10th Sikh Guru, Guru Gobind Singhji was born. Takht Sri Patna Sahib was built by Maharaja Ranjit Singh to commemorate the event. Also known as Harmandir Sahib, the holy shrine is built in the old quarters of Patna city in an area known as Kucha Farrukh Khan and is thronged with devotees from all over the globe. Visit it for a glimpse into Sikh history. Relics of the 10th Guru like four iron arrows, weapons, a pair of his sandals and a cradle with gold-plated stands are housed in the shrine.",

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