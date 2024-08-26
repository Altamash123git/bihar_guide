import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tibetanmarket extends StatelessWidget{
  var marketimg=[
    {"image":"https://www.holidify.com/images/compressed/5660.jpg"},
    {"image":"https://im.rediff.com/news/2017/jan/10bodh-gaya12.jpg"},
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlvAjQBWOvieZCe0z4zLJil-l13iiDPx5a1Q&s"},
    {"image":"https://assets.zeezest.com/images/PROD_shutterstock_719391520_1714824065257_thumb_500.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tibetan refugee market"),
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

                    itemCount: marketimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(marketimg[i]["image"].toString()),
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
                    Text("Tibetan Refugee Market ", style: TextStyle(
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
                    Text("Weather: \nTags:market\nLabel:top Attracions"),
                    Text("Location:5km from city center"),
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
                    Text("The story of the Tibetan Refugee Market in Bodh Gaya starts in 1959, when His Holiness the 14th Dalai Lama fled Tibet due to the Chinese invasion. He, along with thousands of followers, sought refuge in India. Over time, the government of India settled these refugees in various parts of the country. One such place where the Tibetan community found a home was in the state of Bihar, in the vicinity of the holy site of Bodh Gaya.Embracing the ethos of resilience and entrepreneurship, the Tibetans started small markets to sustain their community economically. What began as a means of livelihood for the refugees gradually evolved into a vibrant marketplace, attracting visitors not only for religious purposes but also for the unique shopping experiences at the Tibetan Refugee Market.", style: TextStyle(fontSize: 20),)
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
