import 'dart:async';

//import 'package:addition/Homepage.dart';
import 'package:bihar_tour/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{

  const SplashPage({super.key});


  @override
  Widget build(BuildContext context) {

    var biharimg=[
     /* {
        "image":"https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_jubba-sahni-park-muzaffarpur-1_l_360_640.jpg",

      },*/
      {
        "image": "https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Golghar.jpg:cf-webp:w-848:h-551",
      },
      {
        "image":"https://www.holidify.com/images/cmsuploads/compressed/Xuanzang_Memorial_Hall_20190116141757.JPG"
      },
    ];
    var biharimg2=[
      {"image":"https://www.seawatersports.com/img/newimage/places/hieun-tsang-memorial-hall-kundalpur.jpg"},
      {"image":"https://www.holidify.com/images/compressed/3532.jpg"},
      { "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYcPNMbI3YU8qmucVQrFdhHdg-hcVwyo4QiQ&s"},
    ];

    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Color(0xff124e66),
      body: Container(
        color: Color(0xffffdcf1),
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Visit Bihar", style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700
              ),),
             SizedBox(
               height: 20,
             ),
             Container(
               height: 200,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: biharimg.length,
                   shrinkWrap: true,
                   itemBuilder: (c,i){
                 return CircleAvatar(
                   backgroundImage: NetworkImage(biharimg[i]["image"].toString()

                   ),
                   radius: 90,
                 );
               }),
             ),
              Image.asset("asset/image/biharmap.png", ),
              Text("BIHAR the backward \nyet beautiful state", style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),),
              Container(
                //alignment: Alignment.bottomLeft,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: biharimg2.length,
                  itemBuilder:(c,i){
                    return CircleAvatar(
                      backgroundImage: NetworkImage(biharimg2[i]["image"].toString()),
                      radius: 60,
                    );
                  },

                ),

                ),


            ],
          ),
        ),
      ),

    );
  }
}