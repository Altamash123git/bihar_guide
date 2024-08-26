import 'package:bihar_tour/litchi_garden.dart';
import 'package:bihar_tour/bose_memorial.dart';
import 'package:bihar_tour/deviMandir.dart';
import 'package:bihar_tour/park.dart';
import 'package:bihar_tour/ramchandra%20_library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';


class muzaffarpur extends StatelessWidget{
  var muzpages=[park(), devimandir(), boseMemorail(), ramchandra_library(), litchiGarden()];
  var muzplaces=[
    {
      "image":"https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_jubba-sahni-park-muzaffarpur-1_l_360_640.jpg",
      "name":"jubah shani park"
    },
    {
      "image":"https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_garib-sthan-mandir-muzaffarpur-1_l_639_640.jpg",
      "name":"Devi Mandir",
    },
    {
      "image":"https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_khudiram-bose-memorial-muzaffarpur-1_l_360_640.jpg",
      "name":"khudiram bose memorial"
    },
    {
      "image":"https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_ramchandra-shahi-museum-muzaffarpur-1_p_853_640.jpg",
      "name":"Ramchandra Shahi Museum",
    },
    {
     "image":"https://www.prabhatkhabar.com/wp-content/uploads/2024/04/shahi-lichi-muzaffarpur.jpg" ,
      "name":"Litchi Garden's"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Muzaffarpur"),
        actions: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: muzplaces.length,

              itemBuilder: (c,i){
            return Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(muzplaces[i]["image"].toString()),
                ),
              ],
            );
          })
        ],
      ),
      body: SingleChildScrollView(

        child: Container(
         color: Color(0xfff9ebdf),
          /*decoration: BoxDecoration(

              image: DecorationImage(
                  image:AssetImage("asset/image/litchi.png", ),
                  fit: BoxFit.cover
              )
          ),*/



          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff445566)
                ),
                child: Text(" Place's to Visit in Muzaffarpur",

                  style: TextStyle(
                    color: Colors.white,

                    decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,

                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color:Color (0XFFF9EBDF)


                ),
                height: 230,
                //width: 300,
                margin: EdgeInsets.all(15),
                //color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: muzplaces.length,
                  shrinkWrap: true,
                    itemBuilder: (c,i){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>muzpages[i] ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),


                      child: Column(


                        children: [

                          Text(muzplaces[i]["name"].toString(), style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              /*decoration: BoxDecoration(
                                  color: Color(0xffFCECEF),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.black
                                )

                              ),*/
                              child: CircleAvatar(
                                radius: 80,
                                  backgroundImage: NetworkImage(muzplaces[i]["image"].toString(), )),

                              //color: Colors.pinkAccent,
                              alignment: Alignment.center,
                              constraints: const BoxConstraints(
                               // maxWidth: 260,
                                //maxHeight: 250,

                              ),

                            ),


                          )
                        ],
                      ),


                    ),
                  );

                }),
              ),
              SizedBox(
                height: 10,
              ),

             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Color(0xffDDEEFF) ,
               ),
               width: 500,
               margin: EdgeInsets.all(10),

               child: Column(
                 children: [
                   Text(" Know Muzaafarpur", style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontSize: 20,
                   ),),
                   Container(
                     margin: EdgeInsets.all(20),
                    /* decoration: BoxDecoration(
                         //color: Colors.greenAccent,
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(
                           width: 3,
                         )
                     ),*/
                     width: 500,
                     child: Text("Historical Significance: Muzaffarpur has a rich history dating back to ancient times. It has been an important center in the region due to its strategic location and historical trade routes.Culture: The city is known for its vibrant cultural heritage, including various festivals and traditional practices. The people of Muzaffarpur celebrate festivals such as Chhath Puja, Durga Puja, and Holi with enthusiasm.\nFood: The local cuisine of Muzaffarpur is diverse, featuring a variety of traditional Bihar dishes. Some popular foods include litti chokha, sattu paratha, and local sweets.Infrastructure: Like many cities in Bihar, Muzaffarpur faces challenges related to infrastructure development, including roads, sanitation, and healthcare.", style: TextStyle(
                       fontSize: 20
                     ),),

                   ),
                 ],
               ),
             )


            ],
          ),
        ),
      ),
    );
  }
}