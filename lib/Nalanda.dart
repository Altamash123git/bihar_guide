import 'package:bihar_tour/Tsang_hall.dart';
import 'package:bihar_tour/kundalpur.dart';
import 'package:bihar_tour/nalanda_museum.dart';
import 'package:bihar_tour/ruinsnalanda.dart';
import 'package:bihar_tour/stupa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nalanda extends StatelessWidget {
  var nalandapages=[ruinsNalnda(),tsanghall(), stupa(), kundalpur(), NalandaMuseum()];
  var nalandaplaces=[
    {
      "name":" Ruins of Nalnda University",
      "image":"https://www.holidify.com/images/cmsuploads/compressed/624_20190412131209.jpg"
    },
{
"name":"Hiuen Tsang Memorial Hall",
"image":"https://www.holidify.com/images/cmsuploads/compressed/Xuanzang_Memorial_Hall_20190116141757.JPG"
},
    {
      "name":"The Great Stupa",
      "image":"https://www.holidify.com/images/compressed/629.jpg",
    },
    {
      "name":"Kundalpur",
      "image":"https://www.holidify.com/images/cmsuploads/compressed/630_20190715154924.jpg",
    },
    {
      "name":"Nalanda Archaelogical Museum",
      "image":"https://www.holidify.com/images/compressed/625.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Nalanda"),
        actions: [
          ListView.builder(
            itemCount: nalandaplaces.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:(c,i){
            return Row(
              children: [
                CircleAvatar(

                  backgroundImage: NetworkImage(nalandaplaces[i]["image"].toString()),


                )

              ],
            );

          })


        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfff9ebdf),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Must Visit's of Nalanda", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),
              Container(
                height: 230,
                child: ListView.builder(
                  itemCount: nalandaplaces.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    itemBuilder: (c,i){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>nalandapages[i]));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          children: [
                            Text(nalandaplaces[i]["name"].toString(), ),
                            SizedBox(
                              height: 7,
                            ),
                            CircleAvatar(

                              backgroundImage: NetworkImage(nalandaplaces[i]["image"].toString()),
                              radius: 90,
                            )
                          ],
                        ),

                      ),
                    );
                    }),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 3
                  )
                ),
                child: Column(
                  children: [
                    Text("Know Nalanda", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                    Text("Nalanda is an archaeological site in Bihar, India that was a center of learning from the 5th century CE to 1200 CE. It was a large Buddhist monastery, or Mahavihara, in the ancient kingdom of Magadha, which is now Bihar. The site includes the remains of stupas, shrines, viharas (residential and educational buildings), and important art works in stucco, stone, and metal.Nalanda is a UNESCO World Heritage Site, and visitors can see a variety of compounds, dormitories, temples, meditation halls, libraries, and other educational structures. Some say it's a nice place to explore and learn about Indian history, but recommend taking a guide to get a better understanding.Nalanda's history is significant because it was the first residential university in the world, founded by Emperor Kumaragupta in 427 CE. It flourished for over 800 years, and is believed to have had 2,000 teachers and 10,000 students. The site played a key role in the development of Buddhism and the transmission of knowledge, and is considered to be the most ancient university in the Indian subcontinent. Nalanda also contributed to the development of Buddhist imagery, and is credited with the emergence of many Mahayana and Vajrayana images. ",


                style: TextStyle(
                      fontSize: 18
                    ),),
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