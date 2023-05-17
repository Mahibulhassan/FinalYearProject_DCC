import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(child: Scaffold(backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text("City Router Finder"),backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: Colors.white70,
        child: (Column(
          children: [
            Column(children: [
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.2, color: Colors.blue,
                width: size.height*0.3,
                child: Text("Logo Will Be Here"),
              ),
              SizedBox(height: size.height*0.03,),
              Container(width: size.width*0.6,height: size.height*0.002,color: Colors.black,),
              Padding(
                padding: EdgeInsets.fromLTRB(40,0,0,0),
                child: Row(
                  children: [SizedBox(height: size.height*0.05,),
                    Text("About Developers",style: TextStyle(fontSize: 20),),
                    SizedBox(width: size.width*0.06,),
                    Icon(Icons.arrow_forward),
                  ],),),

              SizedBox(height: size.height*0.01,),
              Container(width: size.width*0.6,height: size.height*0.002,color: Colors.black,),
              Padding(
                padding: EdgeInsets.fromLTRB(40,0,0,0),
                child: Row(
                  children: [SizedBox(height: size.height*0.05,),
                    Text("Query / Reports",style: TextStyle(fontSize: 20),),
                    SizedBox(width: size.width*0.11,),
                    Icon(Icons.report),
                  ],),),

              SizedBox(height: size.height*0.01,),
              Container(width: size.width*0.6,height: size.height*0.002,color: Colors.black,),
              Padding(
                padding: EdgeInsets.fromLTRB(40,0,0,0),
                child: Row(
                  children: [SizedBox(height: size.height*0.05,),
                    Text("Disclamer",style: TextStyle(fontSize: 20),),
                    SizedBox(width: size.width*0.23,),
                    Icon(Icons.report_problem),
                  ],),),

            ],),
          ],
        )),
      ),
      body:
      Column(
        children: [
          Container(
            height: size.height*0.25,
            width: size.width*1,
            color: Colors.amber,
          ),
          SizedBox(height: size.height*0.07,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(onPressed:(){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.orange,
                height: size.height*0.15,
                minWidth: size.width*0.20,

                child:Text("Find Routes",style: TextStyle(fontSize: 20)),
              ),
              SizedBox(width: size.width*0.1,),
              MaterialButton(onPressed:(){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.orange,
                height: size.height*0.15,
                minWidth: size.width*0.35,

                child:Text("List Bus",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
          SizedBox(height: size.height*0.1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(onPressed:(){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.orange,
                height: size.height*0.15,
                minWidth: size.width*0.20,

                child:Text("Journey Tips",style: TextStyle(fontSize: 20)),
              ),
              SizedBox(width: size.width*0.1,),
              MaterialButton(onPressed:(){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.orange,
                height: size.height*0.15,
                minWidth: size.width*0.35,

                child:Text("Journey Dua",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

