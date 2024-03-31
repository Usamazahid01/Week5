import 'package:flutter/material.dart';
import 'package:lab5appdev/AutomaticValidationForm.dart';
import 'package:lab5appdev/Formvalidation.dart';
import 'package:lab5appdev/customizedtabbar.dart';
import 'package:lab5appdev/customtabbar.dart';

void main()
{
  runApp( Myapp());
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Myappstate();


}

class  Myappstate  extends State<Myapp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Lab#5"),
            backgroundColor: Colors.teal,
            bottom:const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.black,

              tabs:[
                Tab(text: 'Fisrt Tab', ),
                Tab(text: "secound Tab",),
                Tab(text: 'Third Tab',),
            ],

            ),
          ),
          drawer: const Drawer(
            child: Center(
              child: Text(
                'I am Drawer',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),

          body: const TabBarView(children: [
              FormValidation(),
            Automaticvalidation(),

            Customizedtabbar(),




          ],),


        ),
      ),


    );
  }
  
  
}
