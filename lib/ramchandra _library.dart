import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bihar_tour/splash.dart';
class ramchandra_library extends StatelessWidget{
  var libimage=[
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY26fK8w3bKqjT9H4pP6xcUoh-WMdgE6Wvjw&s"
    },
    {
      "image":"https://images.jdmagicbox.com/comp/muzaffarpur/d2/9999px621.x621.141223180854.n9d2/catalogue/ram-chandra-shahi-museum-muzaffarpur-ho-muzaffarpur-tourist-attraction-ls5tj8s-250.jpg"
    },
    {
      "image":"https://www.touristplaces.net.in/images/pp/7/p144532.jpg"
    },
    {
      "image":"https://content3.jdmagicbox.com/v2/comp/mumbai/i3/9999px621.x621.180604211956.r7i3/catalogue/ramchandra-shahi-museum-ramna-muzaffarpur-museums-kp33ykrr3s.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Ramchandra Library",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: libimage.length,
                  itemBuilder: (c,i){
                return Container(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(libimage[i]["image"].toString()),
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
                  Text("Ramchandra Shahi  Memorial",style: TextStyle(
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
                  Text("Location: Mahammadpur Kazi, Mithanpura,", style: TextStyle(
                    fontSize: 18
                  ),),
                  Text("Timing:10 AM TO 5 PM\nEntrye fee:free",style: TextStyle(
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
              child: Text("The museum was established in the memory of Ramchandra Shahi, a noted politician and social worker from Bihar who played a key role in India's independence movement. The museum houses a diverse collection of artefacts, including sculptures, coins, paintings, and pottery from different periods of Indian history.Visitors can also purchase souvenirs and books related to Indian history and culture from the museum gift shop.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),

    );
  }

}