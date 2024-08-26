import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class budhaStatue extends StatelessWidget{
  var statueimg=[
    {"image":"https://www.trawell.in/admin/images/upload/004883441Giant_Budhha_Statue.jpg"},
    {"image":"https://www.financialexpress.com/wp-content/uploads/2022/03/Buddha-statue-ANI.jpeg"},
    {"image":"https://media-cdn.tripadvisor.com/media/photo-s/11/88/3a/6c/kundan-bazar-guest-house.jpg"},
    {"image":"https://crackittoday.com/wp-content/uploads/2021/05/116535255-the-reclining-buddha-statue-in-pong-sunan-temple-thailand-.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Great Buddha Statue"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfff9ebdf),


          child: Column(

            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(1),
                height: 200,
                child: ListView.builder(

                    itemCount: statueimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(statueimg[i]["image"].toString()),
                          radius: 90,
                        ),
                      );
                    }),

              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Great Buddha statue ", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("Show Map",style: TextStyle(
                      color:  Colors.blue,
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Text("3.8(300 reviews)")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Text("Weather: \nTags:Temple\nLabel:top Attracions"),
                    Text("Location:2km from city center"),
                    Text("Timing: 5 am to 12pm, 4om to 9pm")
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent
                ),
                onPressed: (){}, child:Text("Add to bucket list", style: TextStyle(
                //color: Colors.greenAccent,
                  fontSize: 18
              ),),

              ),
              Divider(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hitory and Information", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 3,
                    )
                ),
                margin: EdgeInsets.all(15),
                child: Column(

                  children: [
                    Text("The Great Buddha Statue is an awe-inspiring sight, standing at a height of about 25 m. It is believed to be one of the largest statues in India and shows Lord Buddha sitting on a lotus in a meditative pose. It was unveiled and consecrated on November 18, 1989, and the ceremony was attended by the 14th Dalai Lama who blessed the site. The statue is a symbol of Bodh Gaya and draws pilgrims from across the world. It is said that the statue took seven years to be built and about 120,000 masons were involved in its construction. The foundation stone of the statue was laid beside the Mahabodhi Temple in 1982. Made of red granite and sandstone blocks, it is a sight to behold.", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
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
