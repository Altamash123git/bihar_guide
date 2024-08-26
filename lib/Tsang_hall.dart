import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tsanghall extends StatelessWidget{
  var tusang=[
    {"image":"https://www.seawatersports.com/img/newimage/places/hieun-tsang-memorial-hall-kundalpur.jpg"},
    {"image":"https://travelsetu.com/apps/uploads/new_destinations_photos/destination/2024/01/06/aebe7c10677824c2b5ba85169f90d56c_1000x1000.jpg"},
    {"image":"https://i.ytimg.com/vi/EjKCv44Aetg/maxresdefault.jpg"},
    {"image":"https://ramaarya.blog/wp-content/uploads/2019/02/rajgir13.jpg?w=584&h=389"},
  ];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(" Huien- Tsang memorial"),
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
                    itemCount: tusang.length,
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
                                tusang[i]["image"].toString()),
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
                    Text("Hieun Tsang Memorial Hall", style: TextStyle(
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
                    Text("4.9(reviewed by 200)"),

                  ],

                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(" Location: Kundalpur"),
                    Text("Timing:in normal college timing(closed on holiday's)\nEntry Fee:40"),

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

                  "The Hiuen Tsang Memorial Hall was built in memory of the Chinese scholar in the location where he was said to have resided for over 12 years during his time in the country. The memorial hall is home to writings of the scholar about his observations regarding medieval India, which forms the basis of much of the knowledge of that time.",
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