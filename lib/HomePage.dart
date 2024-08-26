import 'package:bihar_tour/Nalanda.dart';
import 'package:bihar_tour/Patna.dart';
import 'package:bihar_tour/gaya.dart';
import 'package:bihar_tour/muzaffarpur.dart';
import 'package:bihar_tour/patna_pageRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Homepage extends StatelessWidget{

  var cities=[
    {
      "name":"Patna",
      "image":"asset/image/patnapool.png",
      "desc": "capital of bihar"
    },
    {
      "name":"Muzaffarpur",
      "image":"asset/image/litchi.png",
      "desc":"The litch captital of india",
    },
    {
      "name":"nalanda",
      "image":"asset/image/nalanda.png",
      "desc":"The great Nalanda, Constituiting the world's oldest university",
    },
    {
      "name":"Gaya",
      "image":"asset/image/gaya.png",
      "desc":"The land of Gautam budh"
    },
    {
      "name":"Chappra",
      "image":"asset/image/chappra.png",
      "desc":"the film industry of bihar",
    },

  ];
  var Pages=[Patna(),muzaffarpur(),Nalanda(),Bodhgaya()];




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(




        backgroundColor: Color(0xffddeeff),
        title: Column(

          children: [

            Text("बिहार में आपका स्वागत है" ,textAlign:  TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),

            Text("Welcome to bihar",style: TextStyle(
            fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ],
        ),
        actions: [
          SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            child: Row(
              children: [

                CircleAvatar(
                    radius:20,

                    backgroundImage:  NetworkImage("https://nalandauniv.edu.in/wp-content/uploads/2022/05/3.-Academic-Spine-1-scaled-1.jpg",)),

                CircleAvatar(


                    radius: 20,
                    //clipper:Clip.hardEdge ,
                    backgroundImage: NetworkImage("https://m.economictimes.com/thumb/msid-82915265,width-1200,height-900,resizemode-4,imgsize-125958/shahi-litchi.jpg", )),

                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/41/India_Farming.jpg",)
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Great_Buddha_Statue%2C_Bodh_Gaya.jpg/375px-Great_Buddha_Statue%2C_Bodh_Gaya.jpg"),
                )
              ],
            ),
          )


        ],

        //centerTitle: true,
      ),
      body:

      Container(
        //color: Color(0XFF425161),
        child: SingleChildScrollView(
          child: Column(
            children: [

              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("click on cities  below to view\nmust visit's and many more", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),),
              ),*/

              Container(

                height: 300,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cities.length,
                    //physics: NeverScrollableScrollPhysics(),
                    //shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                     itemBuilder: (c,i){
                  return Container(
                    child: GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, Approutes.getRouteMap()[i]);
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>Pages[i]));
                      },
                      child: Container(
                        //height: 200,
                        //width: 300,

                        decoration: BoxDecoration(
                          color: Color(0XFFD6BBB2),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 3
                          )
                        ),
                        margin: EdgeInsets.all(10),

                        child:Column(
                          children:[
                      Text(cities[i]["name"].toString(), style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(cities[i]["image"].toString(), width: 220,),
                            SizedBox(
                              height: 10,
                            ),
                      Text(cities[i]["desc"].toString()),


                          ],

                        ),


                      ),
                    ),
                  );

                },
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 550,
                //height: 500,


                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: Color(0xff218cab),
                    color: Color(0xff978F7D),
                    border: Border.all(
                        width: 4
                    )
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("kNOW ABOUT BIHAR",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Historical Significance: Bihar is one of the oldest inhabited regions in India, playing a central role in ancient Indian history, including the rise of the Magadha Empire and the Mauryan Empire",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)


                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Buddhism: The state is renowned as the birthplace of Buddhism, with Bodh Gaya being the site where Siddhartha Gautama attained enlightenment and became Buddha.",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Nalanda University: Bihar was home to Nalanda University, a major center of learning in ancient times, attracting scholars from across Asia.",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)

                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Cultural Diversity: The state is known for its rich cultural heritage, including traditional dance forms like Bidesia and Maithili, and its diverse festivals.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              /*Container(
                height: 200,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 10,
                ), itemBuilder:(c,i){
                    return Container(
                      alignment: Alignment.bottomCenter,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Container(
                            color: Colors.blue,
                            width: 350,
                            height: 300,
                            child: Text("ABCD")
                          ),
                        ),
                      ),
                    );
                }),
              )*/

            ],
          ),
        ),
      ),
    );
  }
}