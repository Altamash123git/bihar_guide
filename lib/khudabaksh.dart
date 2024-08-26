import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';
var library=[
  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-m-_gGyqZOKkRyWI-J03F1-i8IeAl8Sa10A&s"
  },
  {
    "image":"https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Maulvi_Khuda_Bakhsh.jpg/220px-Maulvi_Khuda_Bakhsh.jpg"
  }, {
    "image":"https://kblibrary.bih.nic.in/images/slide4_museum.jpg"
  }, {
    "image":"https://cdn.sanity.io/images/nlpqts3z/production/d5d38f77d8e85d304f95e6526170ab6b57cbfc8b-900x479.png"
  }, {
    "image":"https://www.heritagetimes.in/wp-content/uploads/2021/04/B572A83B-B217-4AC9-A30D-332BE8294C9D.jpeg"
  },
];

class Khudabaksh extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffd54583),
        title: Text(" khudabaksh library"),
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
                  itemCount: library.length,
                  itemBuilder: (_, i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                      ),


                      child: ClipOval(
                          clipBehavior: Clip.antiAlias,


                          child: Image.network(library[i]["image"].toString(),fit: BoxFit.cover,width: 300,height: 300, )),
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
                  Text("Khuda Bkash library", style: TextStyle(
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
                  Text("4.6(199 reviews)")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              width: 400,
              height: 100,
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [Text("Location: Ashok Rajpath "),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Entry fee:free" ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TIMINGS:9:30 AM to 10 PM, close on friday"),
                ],
              ),
            ),
            Divider(
              height: 2,
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
              //height: 600,
              child: Text("A book of the military accounts of Maharaja Ranjit Singh, Timur Nama, Jehangir Nama; books on Persian poetry, Sufism, and even ancient medical texts – you can find all this and a mindboggling lot more at the Khuda Bakhsh Public Library in Patna. A surprise find for many, this is one of the few national libraries of India and houses may rare hand-illustrated manuscripts, printed volumes and exquisite paintings from the Rajput and Mughal eras. The two-storied building that houses the library was completed in 1888 using a princely sum of ₹80,000 and was opened up to the public in 1891. A bibliophile’s Eden, this should definitely be on your list of places to explore while in Patna.",

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