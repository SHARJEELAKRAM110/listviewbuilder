import 'package:flutter/material.dart';
class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Map<String, dynamic>> listData=[
    {"text":"Sharjeel Akram","textTwo":"Where are you..?","textThree":"10:12 PM","image":"assets/images/Doctor 1.jpg"},
    {"text":"Hamas Akram","textTwo":"Whats going on","textThree":"07:10 PM","image":"assets/images/Doctor 4.jpg"},
    {"text":"Hammad","textTwo":"How are you?","textThree":"02:32 PM","image":"assets/images/123.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("ListView in Flutter",style: TextStyle(fontWeight: FontWeight.w700),),
      ),
      body: ListView.builder(
          itemCount: listData.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
        return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:AssetImage(listData[index]["image"].toString()),
                            radius: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(listData[index]["text"].toString(),style: TextStyle(fontSize: 20),),
                              Text(listData[index]["textTwo"].toString(),style: TextStyle(fontSize: 16,),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.watch_later_outlined),
                            Text(listData[index]["textThree"].toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        );
      }
      ),
    );
  }
}
