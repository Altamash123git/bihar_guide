import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thaiMonestary extends StatelessWidget{
  var thaiMonestaryimg=[
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RR0h0qtMyUzRFMdk9kiOKNjAsi9C-OhLLA&s"},
    {"image":"https://c8.alamy.com/comp/2BKWG48/wat-thai-buddhist-temple-interior-bodh-gaya-bihar-india-2BKWG48.jpg"},
    {"image":"https://live.staticflickr.com/3868/14356931428_12d829bf8c_b.jpg"},
    {"image":"https://cdn1.prayagsamagam.com/media/2023/05/12190500/Thai-Monastry-bodh-gaya-5.webp"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Thai Monastery"),
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

                    itemCount: thaiMonestaryimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(thaiMonestaryimg[i]["image"].toString()),
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
                    Text("Thai Temple and  Monastery ", style: TextStyle(
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
                    Text("3.9(100 reviews)")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Text("Weather: \nTags:temple\nLabel:top Attracions"),
                    Text("Location:1km from city center"),
                    Text("Timing: 5 am to 12pm")
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
                    Text("With the aim of spreading the messages of Lord Buddha and principles of Buddhism among the masses, some Buddhist monks in collaboration with the government of Thailand established the Thai Temple and Monastery in Gaya in the year 1957. A fine example of Thai architecture, this beautiful site displays myriad colours of Thai culture and tradition. The monks residing here play an important role in spreading the ideologies and teachings of Lord Buddha. Inside the temple, you can see an enormous Bronze statue of Buddha surrounded by equally beautiful paintings of him. Every year in the month of January, the monastery organises retreats that are held in complete silence. More than a hundred people participate in the retreat and together they practice meditation and yoga here.", style: TextStyle(fontSize: 20),)
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
