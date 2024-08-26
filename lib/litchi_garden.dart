import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class litchiGarden extends StatelessWidget{
  var litchiimage=[
    {
      "image":"https://content.jdmagicbox.com/comp/muzaffarpur/a8/9999px621.x621.141223180420.d2a8/catalogue/litchi-gardens-muzaffarpur-ho-muzaffarpur-tourist-attraction-frj4it5-250.jpg"
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1CJKGIcbcaLMJsWJmYLIT5L4XsE6ZX9O4Bg&s"
    },
    {
      "image": "https://hblimg.mmtcdn.com/content/hubble/img/muzaffarpur_ttd_img/mmt/activities/m_litchi-gardens-muzaffarpur-1_l_673_896.jpg"
    },{
      "image": "https://www.prabhatkhabar.com/wp-content/uploads/2024/04/shahi-lichi-muzaffarpur.jpg"
    },
];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Litchi Garden ",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfff9ebdf),
          child: Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: litchiimage.length,
                    itemBuilder: (c,i){
                      return Container(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(litchiimage[i]["image"].toString()),
                          ),
                          alignment: Alignment.center,
                          constraints: BoxConstraints(
                            maxWidth: 200,
                            maxHeight: 200,
                          ),
                        ),
                      );
                    }),
              ),
              Container(

                margin: EdgeInsets.all(15)
                ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Litchi Garden's ",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),),
                    Text("Show Map", style: TextStyle(
                      color: Colors.blue,
                    ),),
                  ],
                ),



              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.yellow,size: 30,),
                    Text("3.9 (50 reviews)"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location:Anywhere in muzaffarpur,", style: TextStyle(
                        fontSize: 18
                    ),),
                    Text("Whenever you want",style: TextStyle(
                        fontSize: 18
                    ),),
                  ],
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),

                  onPressed: (){}, child:Text("Add to bucket list",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ), )
              ),
              Divider(
                height: 3,
              ),
              Text("History and Information", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22
              ),),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                    )
                ),
                child: Text("The best time to visit the Litchi Garden is from May to June when the litchis are in full bloom and the Litchi Festival is held.Litchi Garden is a popular tourist destination located in Muzaffarpur, Bihar, India. It is known for its vast expanse of litchi orchards and is one of the largest litchi gardens in the world. The garden covers an area of over 200 acres and is home to over 50,000 litchi trees.The Litchi Garden has small shops selling local handicrafts, which make for great souvenirs. Support the local artisans by buying their products.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }

}