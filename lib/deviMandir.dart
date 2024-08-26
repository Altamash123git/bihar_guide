import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';


class devimandir extends StatelessWidget{
  var mandirimage=[
    {
      "image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/f4/b5/ff/garib-sthan-temple.jpg?w=1200&h=1200&s=1"
    },
    {
      "image":"https://content.jdmagicbox.com/comp/muzaffarpur/z2/9999px621.x621.141223180148.d3z2/catalogue/baba-garib-sthan-mandir-muzaffarpur-ho-muzaffarpur-temples-y3x4tye-250.png"
    },
    {
      "image":"https://www.holidify.com/images/cmsuploads/compressed/1_20181214150113.jpg"
    },
    {
      "image":"https://www.holidify.com/images/cmsuploads/square/TemplePremises_20190911120009.jpg"
    },

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(" Devi Mandir"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

              ),
              //color: Colors.yellowAccent,
              height: 200,
              child: ListView.builder(
                  itemCount: mandirimage.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (c,i){
                    return Container(
                        child:ClipRRect(
                          child: Container(
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage: NetworkImage(mandirimage[i]["image"].toString()),
                            ),
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(
                              maxWidth: 260,
                              maxHeight: 250,

                            ),
                          ),
                        )


                    );
                  }),

            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Garib Sthan Mandir", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),),
                  Text("Show Map", style: TextStyle(
                      color: Colors.blue
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Text("4.9 (500 reviews)",style: TextStyle(
                      fontSize: 16
                  ),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  Text("Location:Pani tanki , aamgola", style: TextStyle(
                      fontSize: 18
                  ),),

                  Text("Timing:5 am to 8pm\nEntry fee:free", style: TextStyle(
                    fontSize: 18,
                  ),),

                ],
              ),

            ),
            TextButton(


              onPressed: (){}, child: Text("Add to Bucket List", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),),
              style: TextButton.styleFrom(
                  elevation: 20,

                  backgroundColor: Colors.greenAccent
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3
                  )
              ),
              child: Text(" Garib Sthan Mandir is a famous religious site located in the city of Muzaffarpur in the state of Bihar, India. The temple is dedicated to the Sufi saint Hazrat Makhdoom Syed Shah Ruknuddin Alam, who is also known as Shah Baba by the locals. The Garib Sthan Mandir is a popular pilgrimage site, especially for the followers of Sufism. It is believed that the Sufi saint Hazrat Shah Ruknuddin Alam had lived and meditated at this site during the 13th century. The temple houses the saint's tomb, and people from all walks of life come here to seek blessings and offer prayers. ",style: TextStyle(
                fontSize: 20
              ), ),
            )
          ],
        ),
      ),
    );
  }

}