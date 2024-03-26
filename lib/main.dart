import 'package:blackcoffer/pages/explore.dart';
import 'package:blackcoffer/pages/homescreen.dart';
import 'package:blackcoffer/pages/refine.dart';
import 'package:blackcoffer/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,

      routes: {
        "/": (context) => HomePage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.exploreRoute: (context) => ExplorePage(),
        Myroutes.refineRoute: (context) => RefinePage(),
      },
    );
  }
}
