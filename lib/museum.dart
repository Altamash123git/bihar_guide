import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';

class PatnaMeusem extends StatelessWidget{
  var museum=[
    {
      "image":"https://cdnbbsr.s3waas.gov.in/s337d097caf1299d9aa79c2c2b843d2d78/uploads/2019/09/2023012053.jpg"
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRauFFa9q0ShNaTPuTDT19Ck1bYnTQ3KdQiKw&s"
    },
    {
      "image":"https://content3.jdmagicbox.com/comp/patna/w7/0612px612.x612.140930112349.m6w7/catalogue/bihar-museum--high-court-patna-museums-oktgkpaijh.jpg"
    },
    {
      "image":"https://hblimg.mmtcdn.com/content/hubble/img/patna/mmt/activities/t_ufs/m_Bihar%20Museum-1_l_427_640.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffd54583),
        title: Text("Patna Museum"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  //color: Color(0XFFF2B9E1),
                  color: Colors.grey
              ),

              width: 300,
              height: 400,
              child: ListView.builder(
                //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: museum.length,
                  itemBuilder: (_, i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                      ),


                      child: ClipOval(
                        //clipBehavior: Clip.antiAlias,


                          child: Image.network(museum[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
                      height: 350,
                      width: 270,

                      //color: Colors.yellow,

                    );
                  }
              ),





            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Patna Museum", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22
                  ),),
                  Text("show Map",style: TextStyle(
                      color: Colors.blue
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(8),

              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Text("4.5(2000 reviews)")
                ],
              ),
            ),
            Container(

              width: 400,
              height: 150,
              //alignment: Alignment.bottomLeft,
              child: Column(
                children: [Text("ADDRESS:Near Kotwali Thana, Budh Marg"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Timing:10 am to 4:30 pm, closed on monday", ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("ENTRY FEE:30"),
                ],
              ),
            ),
            Divider(
              height: 3,
            ),
            Text("History and information", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19
            ),),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0XFFFFC9B4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 2
                  )
              ),
              margin: EdgeInsets.all(20),
              width: 400,
              //height: 400,
              child: Text("A grand building constructed in 1917 especially for the museum founded by Sir Edward Gait, the then Lieutenant Governor of Bihar; the structure that houses the Patna Museum is a site in itself. Created as a place to display historical and archeological finds of note discovered in and around the city, today it displays over 20,000 exhibits. While here, focus on the fossil of a 200-million-year-old tree classified as a Dadoxylon, the Buddha Relic Casket – a soapstone casket said to contain the ashes of Mahatma Buddha, the 2300-year-old Didarganj Yakshi, an ancient sculpture, and museum’s various galleries like the Natural History Gallery, which would be endlessly amazing if you’re traveling with kids. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                ),),
            )
          ],

        ),
      ),


    );
  }
}