import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mahaboudhi extends StatelessWidget{
  var bodhiTempleimg=[
    {"image":"https://static.toiimg.com/photo/47081465/.jpg"},
    {"image":"https://drishtiias.com/images/uploads/1658304275_DrishtiIAS_English_Mahabodhi_temple_image7.jpg"},
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ51RSQsXPyJRfcH41LrqriPGFTHH3o7VI3A&s"},
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SxVP9zmw3_iJZCWXtu3hRtEVjIrBCtdjVaqpXdfRXVl916Yktl-G2QaFVXVxvivTKV4&usqp=CAU"},
    {"image":"https://i0.wp.com/sampathmk.com/wp-content/uploads/2018/01/dsc_0314.jpg?ssl=1"}
  ];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mahabodhi Temple"),
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

                  itemCount: bodhiTempleimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c,i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(bodhiTempleimg[i]["image"].toString()),
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
                    Text("Mahabodhi Temple", style: TextStyle(
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
                    Text("3.8(500 reviews)")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Text("Weather: \nTags:Temple\nLabel:Temple"),
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
                    
                    Text("The Mahabodhi temple, also called the Great Awakening Temple, is a UNESCO World Heritage Site located in Bodhgaya, Bihar. It is a Buddhist temple that marks the location where the Lord Buddha is said to have attained enlightenment. Lord Buddha holds a very significant place in the religious history of India as he is believed to be the 9th and the most recent incarnation of Lord Vishnu to have walked the earth. The temple spreads over an area of a whopping 4.8 hectares and is 55 meters tall. The Bodhi Tree is situated to the left of the temple and is believed to be the direct descendant of the actual tree under which Lord Gautam Buddha meditated and attained enlightenment and laid down his philosophy for life. The original temple was built by Emperor Ashoka after he turned to Buddhism in order to seek peace and solitude from war and conquests."),
                    Text("The great Emperor Ashoka visited Bodh Gaya in around 260 BC. During his visit, he constructed a small temple by a tree, which was the Bodhi tree- the tree under which Gautam Buddha was sitting when he attained enlightenment. An inscription dated back to between 1st century and 2nd century read that the temple built by Emperor Ashoka was replaced by a new one. Many monks and devotees can be seen performing countless prostrations to the tree. It's a purificatory ritual, and some monks are known to do up to 1,00,000 prostrations at one time. The architecture of the temple and its overall silence and peace will surely enchant you as you visit it.")
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
