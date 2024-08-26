import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bhutanMonatery extends StatelessWidget{
  var bhutanmonasteryimg=[
    {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk8EMmp-MPgOt9N-0bsv-_euB4FbP2ppdTew&s"},
    {"image":"https://i.ytimg.com/vi/KC8k1JHjxLE/mqdefault.jpg"},
    {"image":"https://static.toiimg.com/thumb/msid-53192801,width=1200,height=900/53192801.jpg"},
    {"image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/e1/25/97/caption.jpg?w=300&h=300&s=1"},

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text("Bhutan Monastery"),
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

                    itemCount: bhutanmonasteryimg.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(bhutanmonasteryimg[i]["image"].toString()),
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
                    Text("The Royal Bhutan Monastery", style: TextStyle(
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
                    Text("Royal Bhutan Monastery is a magnificent Buddhist monastery and temple located in Bodhgaya, Bihar. The monastery features important instances from the life of Gautam Buddha in the form of clay carvings which attract millions of Buddhism followers from across the world. The King of Bhutan got this monastery constructed as a tribute to Lord Buddha. This monastery will surely impress you with its splendid architecture, serenity and the seven feet tall statue of Buddha inside.In search of eternal peace, people from various parts of the world visit this monastery. Buddhists believe that the spiritual quest of monks benefits the entire community and their rituals bring prosperity and protection.", style: TextStyle(fontSize: 20),)
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
