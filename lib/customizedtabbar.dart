import 'package:flutter/material.dart';

class Customizedtabbar extends StatefulWidget{
  const Customizedtabbar({Key? Key}) : super(key:Key);
  @override
  State<StatefulWidget> createState() =>Customizedtabbarstate();


}

class Customizedtabbarstate extends State<Customizedtabbar>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 50.0,right: 8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(

                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0),

                  ),
                  child: TabBar(
                      indicator:
                      BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(25.0),



                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs:const [
                        Tab(text: ' First Tab ',),
                        Tab(text: 'Secound Tab',),
                        Tab(text: 'Third Tab',),

                      ]),

                ),
                Expanded(child:
                TabBarView(
                  children: [
                    Center(
                      child:Text("Tab1") ,
                    ),
                    Center(
                      child:Text("Tab2") ,
                    ),
                    Center(
                      child:Text("Tab3") ,
                    ),
                  ],
                )


                ),

              ],
            ),
          ),
        ),

        );



  }

}