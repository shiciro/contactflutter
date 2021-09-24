import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  List <String> listContact =[
    "Aseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeep","Budi","Cecep","Dimas","Edo"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: Text("Kontak"),
        ),

        body:ListView(
          children: [
            for(int i=0;i<listContact.length;i++)
            Container(
            height : 140,
            width : double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            
            decoration: BoxDecoration(
              color : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0,3)
                )
              ]
            ),
            child: Row(
              children: [
                CircleAvatar(),
                Flexible(
                  fit: FlexFit.tight,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height:120,
                  color: Colors.white,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(listContact[i],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14.0),),
                      Text("asep@gmail.com"),
                      Text("085125234645")
                    ],
                  )
                )
              )
              ],
            ),
          ),]
        ),
      )
    );
  }
}