import 'package:blackcoffer/utils/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  // final Idslist = ID.Idlist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.red,
        // body: Center(
        //   child:Center(child: Text("Explore",style: TextStyle(fontSize: 100),)),
        // ),
        body: ListView.builder(
          itemBuilder: (context,index){
              return const CardWidget();
              },
          itemCount: 10,
          ));
  }
}
