import 'package:bihar_tour/bhutan_monatery.dart';
import 'package:bihar_tour/buddha_statue.dart';
import 'package:bihar_tour/mahaboudhi.dart';
import 'package:bihar_tour/thai_monastery.dart';
import 'package:bihar_tour/tibetanmarket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class Bodhgaya extends StatelessWidget{
  var gayaplaces=[
    {
      "name":"Mahabodhi Temple",
      "image":"https://www.holidify.com/images/cmsuploads/compressed/shutterstock_402506581_20191024172033_20191024172055.jpg"
    },
    {
      "name":"Great Buddha Statue",
      "image":"https://www.holidify.com/images/compressed/3536.jpg"
    },
    {
      "name":"Tibetan refugee market ",
      "image":"https://www.holidify.com/images/compressed/5660.jpg"
    },
    {
      "name":"Thai Monastery",
      "image":"https://www.holidify.com/images/compressed/3538.jpg"
    },{
      "name":"Royal Bhutan Monastery",
      "image":"https://www.holidify.com/images/compressed/3532.jpg"
    },

  ];
  var Gayapages=[ mahaboudhi(),budhaStatue(),Tibetanmarket(),thaiMonestary(),bhutanMonatery()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Bodh Gaya', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
actions: [
  ListView.builder(
    itemCount: gayaplaces.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (c,i){
      return CircleAvatar(
        backgroundImage: NetworkImage(gayaplaces[i]["image"].toString()),
      );
      })
],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfff9ebdf),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Must Visit's of Gaya", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  height: 230,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemCount: gayaplaces.length,
                      itemBuilder: (c,i){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (c)=>Gayapages[i]));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(gayaplaces[i]["name"].toString(), style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),),
                              SizedBox(
                                height: 4,
                              ),
                              CircleAvatar(

                                backgroundImage: NetworkImage(gayaplaces[i]["image"].toString()),
                                radius: 90,
                              )
                            ],
                          ),

                        ),
                      );
                      }),

                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Bodh gaya travel essential's",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("Ideal duration:1 to 3 days\nBest Time: oct to march\nweather:",)
                      
                      
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      
                      width: 3
                    )
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Know Gaya",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),),
                      Text("Bodh Gaya is a Buddhist pilgrimage site in Gaya District of Bihar. Famous for the Mahabodhi Temple, It was here under the Bodhi tree that Gautama Buddha attained enlightenment.It is now one of the UNESCO World Heritage Sites, and a lot of foreign countries, including Japan and China, have helped the Indian government in building facilities for the Buddhist pilgrims. The place is bustling with pilgrims all through the year from India and abroad who come to pay their homage in monasteries, temples and remnants of Bodhi Tree.Located near the river Neranjana, Bodh Gaya was earlier known as Uruwela. It was also known as Sambodhi, Vajrasana or Mahabodhi until the 18th century CE. It is one of the four important Buddhist sites that include: Kushinagar, Lumbini and Sarnath.",style: TextStyle(
                        fontSize: 20,
                        
                      ),)
                    ],
                  ),
                ),
              ],

            ),
          ),
        ),
      ),

    );
  }
}