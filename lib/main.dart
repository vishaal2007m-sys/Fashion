import 'package:flutter/material.dart';
import 'package:task1/navigation.dart';
import 'package:task1/contact.dart';
import 'package:task1/cart.dart';
import 'package:task1/page3.dart';
import 'package:task1/page4.dart';
import 'package:task1/info.dart';
import 'package:task1/discover.dart';
import 'package:task1/home.dart';
import 'package:task1/page8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: NavigationScreen(),
    );
  }
}
