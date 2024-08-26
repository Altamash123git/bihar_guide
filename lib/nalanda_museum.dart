import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NalandaMuseum extends StatelessWidget{
  var museumimg=[
    {"image":"https://imgcld.yatra.com/ytimages/image/upload/t_monuments_detailslargeimg/v1528100609/Monuments/711c715d-bbb3-4c8e-94dd-b0b72af898a6/Nalanda-archaelogical-museum_93tl2t.jpg"},
    {"image":"https://www.tourmyindia.com/museums/images/nalanda-archaeological-museum.jpg"},
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRM0h-Hzr2o_chYEZHc3di2G-Ax-5ebDwiBw&s"},
    {"image":"https://asinalandamuseum.com/assets/images/sp3.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(" Kundalpur"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffffdcf1),
          child: Column(
            children: [
              Container(
                height: 190,
                child: ListView.builder(
                    itemCount: museumimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c, i) {
                      return Container(
                        //color: Colors.blue,

                        padding: EdgeInsets.all(4),
                        child: Container(
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                                museumimg[i]["image"].toString()),
                          ),
                          alignment: Alignment.center,
                          constraints: BoxConstraints(
                            maxHeight: 190,
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Archaelogical Museum of Nalanda", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),),
                    Text("Show Map", style: TextStyle(
                      color: Colors.blue,
                    ),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,size: 30, ),
                    Text("4.9(200reviews)"),

                  ],

                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(" Location: 2km away from main city"),
                    Text("Timing:6 AM TO 10 PM(closed on holiday's)\nEntry Fee:30"),

                  ],
                ),

              ),
              TextButton(onPressed: (){}, child: Text("Add to Buket List"),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),

              ),
              Text("History and Information", style: TextStyle(
                fontSize: 21,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,

              ),),
              Container(

                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(
                        width: 3
                    )
                ),
                margin: EdgeInsets.all(10),
                child: Text(
                  //"Nalanda University is one of the first universities to be established in the world. Nalanda was a flourishing village on an important trade route which ran through Rajagriha (Now 'Rajgir'), then the capital city of Magadha. Magadha was a huge kingdom with parts of present day Bihar, Jharkhand, Bengal, and Odisha. During 7th century AD, the Nalanda university had almost 10,000 students and 2,000 teachers and was visited by Chinese scholar Xuanzang. Patronized by various rulers including King Harshavardhana of Kannauj (7th century CE) and the Pala rulers (8th - 12th century CE) as well as various scholars, it was an international institution with students coming in from different parts of the world. The students at the university studied the 'Great Wheel' (Mahayana) and all the eighteen sects of Buddhism. They also studied Vedas, Literature, Medicine, and Mathematics.\n\nHistory indicates that the University was built during the reign of the Gupta emperor Kumaragupta. Foundation of the university is attributed to Shakraditya. The history of the university can be divided into two parts, one was the growth of the university from the sixth century to ninth, and second was the gradual decline and dissolution during the ninth century to the thirteenth.Xuanxeng, a Buddhist scholar, and monk who travelled through India from 630 to 643 E, spent two years at the university. He was given a warm reception and given the name 'Mokshadeva.Moreover, the whole establishment is surrounded by a brick wall, which encloses the entire convent from without. One gate opens into the great college, from which are separated eight other halls standing in the middle (of the Sangharama). The richly adorned towers and the fairy-like turrets, like pointed hill-tops, are congregated together. The observatories seem to be lost in the vapours (of the morning), and the upper rooms tower above the clouds. These are Xuan Zeng's detailed account on the view of Nalanda Mahavira out of his window.",

                  "Housing the ancient relics of Nalanda University, this museum offers a glance into the culture of ancient Nalanda. Pala Art is displayed through the assorted artifacts maintained here.The statues here are mainly engraved on basalt stone, but others made out of stucco, bronze, stone and terracotta are also present.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),

                ),
              )

            ],
          ),
        ),

      ),

    );
  }

}