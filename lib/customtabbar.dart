import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget{
  const CustomTabBar({Key? Key}) : super(key:Key);
  @override
  State<StatefulWidget> createState() =>CustomTabBarstate();


}

class CustomTabBarstate extends State<CustomTabBar>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,

        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                Expanded(child: TabBarView(
                  children: [
                    Center(
                      child: Text("FirstTab"),
                    ),
                    Center(
                      child: Text("SecoundTab"),
                    ),
                    Center(
                      child: Text("ThirdTab"),
                    ),
                  ],
                ))
              ],
            ),
          )




          ,


        ),



    );
  }

}