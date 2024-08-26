import 'package:bihar_tour/chotidargah.dart';
import 'package:bihar_tour/gol%20ghar.dart';
import 'package:bihar_tour/museum.dart';
import 'package:bihar_tour/khudabaksh.dart';
import 'package:bihar_tour/ruinsofpat.dart';
import 'package:bihar_tour/takhtshri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class Patna extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var patnaPlaces=[

      {
        "image": "https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Golghar.jpg:cf-webp:w-848:h-551",
        "name":"gol ghar"
      },{
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Kumrahar.jpg:cf-webp:w-848:h-551",
        "name":"ruins of Pataliputra",
      },
      {
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Khudabaksh-Oriental-Public-Library.jpg:cf-webp:w-848:h-551",
        "name":" Khuda Bkahsh  Library",
      },

    ];
    var description=[
      {
        "image": "https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Golghar.jpg:cf-webp:w-848:h-551",
        "name":"gol ghar"
      },{
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Kumrahar.jpg:cf-webp:w-848:h-551",
        "name":"ruins of Pataliputra",
      },
      {
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Khudabaksh-Oriental-Public-Library.jpg:cf-webp:w-848:h-551",
        "name":" Khuda Bkahsh  Library",
      },
      {
        "name": "Takht Shri Patna Sahib",
        "image": "https://www.fabhotels.com/blog/wp-content/uploads/2018/07/SriPatnaSahib.jpg:cf-webp:w-848:h-551",
      },
      {
        "name": "Choti Dargah",
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/ChotiDargah.jpg:cf-webp:w-848:h-551"

      },
      {
        "name": "Patna Meusem",
        "image":"https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Patna-Museum.jpg:cf-webp:w-848:h-551",
      },

    ];
    var places=[golghar(), ruinsOfPatliputra(), Khudabaksh(), Takhtshri(), chotidargah(), PatnaMeusem()];
    // TODO: implement build
    return Scaffold(
        //backgroundColor:  Color(0xffdbebf2),


      appBar: AppBar(
        backgroundColor:  Color(0xff6D8F96),
        //backgroundColor: Colors.yellow,
        title:Text( "Patna"),
        actions: [
          Container(

            child: ListView.builder(
              shrinkWrap: true,

              itemCount: patnaPlaces.length,
              scrollDirection: Axis.horizontal,
                itemBuilder: (c,index){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(


                    backgroundImage: NetworkImage(patnaPlaces[index]["image"].toString()),
                    radius: 30,

                  ),
                ],
              );
            }),
          )

        ],

      ),
      body: SingleChildScrollView(
        child: Container(
    child: Container(

    decoration: BoxDecoration(
      color: Color(0xfff9ebdf),
    ),
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.topLeft,
                child: Text("Must Visit's of patna" ,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ), ),
              ),
              SizedBox(
                height: 10,
              ),

              /*Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Tap on  palces to get full information", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),*/
              Container(

                //padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  itemCount: description.length,
                    itemBuilder: (c, i){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>places[i]));
                    },
                    child: Container(
                      //height: 500,
                      //width: 200,

                      margin: EdgeInsets.symmetric(horizontal: 10 , ),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:Color(0xff6D8F96),
                        //Color(0xff42CFC9),

                        border: Border.all(

                          width: 3
                        )
                      ),
                      padding: EdgeInsets.all(10),

                      child:
                      Column(
                        children: [
                          Text(description[i]["name"].toString(), style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                          Image.network(description[i]["image"].toString(), width: 180,height: 220,),


                        ],

                      ),

                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20,
              ),



              Container(
                
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),

                alignment: Alignment.topLeft,
                child: Text("History of patna", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),


              ),

              Divider(
                height: 2,

              ),

              SizedBox(
                height: 10,
              ),

              Container(
                width: 400,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff978F7D),

                  borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                        width: 3
                    )
                ),

                child: Column(
                  children: [
                    Text("Patna, the capital city of Bihar in India, is a city with a rich historical and cultural heritage. Ancient Era: Patna, historically known as Pataliputra, was a prominent city during ancient times. It was a major center during the Maurya and Gupta empires and played a crucial role in Indian history.", style: TextStyle(fontSize: 20),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Ancient Era: Patna, historically known as Pataliputra, was a prominent city during ancient times. It was a major center during the Maurya and Gupta empires and played a crucial role in Indian history,  Historical Significance: The city was known for its strategic location on the banks of the Ganges River and its role as a center of politics, trade, and culture in ancient India. It was also a center for Buddhist learning and was visited by several notable figures including Xuanzang, a Chinese monk", style: TextStyle(fontSize: 20),)


                  ],
                ),

              ),




            ]
          ),
        ),
      ),


    ));
  }
}

