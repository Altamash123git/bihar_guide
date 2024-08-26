import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ruinsNalnda extends StatelessWidget {
  var universityimage = [
    {
      "image":
          "https://www.holidify.com/images/cmsuploads/compressed/624_20190412131209.jpg"
    },
    {
      "image":
          "https://www.holidify.com/images/attr_wiki/compressed/attr_wiki_4742.jpg"
    },
    {
      "image":
          "https://www.holidify.com/images/attr_wiki/compressed/attr_wiki_4738.jpg"
    },
    {
      "image":
          "https://www.holidify.com/images/attr_wiki/compressed/attr_wiki_4740.jpg"
    },
    {
      "image":
          "https://www.holidify.com/images/attr_wiki/compressed/attr_wiki_4735.jpg"
    },
    {
      "image":
          "https://www.holidify.com/images/attr_wiki/compressed/attr_wiki_4739.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(" Nalnda Ruins"),
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
                    itemCount: universityimage.length,
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
                                universityimage[i]["image"].toString()),
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
                    Text("Ruins of great Nalnda University", style: TextStyle(
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
                    Text("5.0(reviwed by Bakhtiyar khilji and his army)"),

                  ],

                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(" Location: 5km away from main city"),
                    Text("Timing:in normal college timing(closed on holiday's)\nEntry Fee:free"),

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
                  "Nalanda University is one of the first universities to be established in the world. Nalanda was a flourishing village on an important trade route which ran through Rajagriha (Now 'Rajgir'), then the capital city of Magadha. Magadha was a huge kingdom with parts of present day Bihar, Jharkhand, Bengal, and Odisha. During 7th century AD, the Nalanda university had almost 10,000 students and 2,000 teachers and was visited by Chinese scholar Xuanzang. Patronized by various rulers including King Harshavardhana of Kannauj (7th century CE) and the Pala rulers (8th - 12th century CE) as well as various scholars, it was an international institution with students coming in from different parts of the world. The students at the university studied the 'Great Wheel' (Mahayana) and all the eighteen sects of Buddhism. They also studied Vedas, Literature, Medicine, and Mathematics.\n\nHistory indicates that the University was built during the reign of the Gupta emperor Kumaragupta. Foundation of the university is attributed to Shakraditya. The history of the university can be divided into two parts, one was the growth of the university from the sixth century to ninth, and second was the gradual decline and dissolution during the ninth century to the thirteenth.Xuanxeng, a Buddhist scholar, and monk who travelled through India from 630 to 643 E, spent two years at the university. He was given a warm reception and given the name 'Mokshadeva.Moreover, the whole establishment is surrounded by a brick wall, which encloses the entire convent from without. One gate opens into the great college, from which are separated eight other halls standing in the middle (of the Sangharama). The richly adorned towers and the fairy-like turrets, like pointed hill-tops, are congregated together. The observatories seem to be lost in the vapours (of the morning), and the upper rooms tower above the clouds. These are Xuan Zeng's detailed account on the view of Nalanda Mahavira out of his window.",

                  style: TextStyle(
                    fontSize: 18,
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
