
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/page3.dart';
import 'package:task1/page4.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.red.shade100,
          appBar: AppBar(
            backgroundColor: Colors.red.shade100,
            title: Text(
              "Bag More",
              style: TextStyle(
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            bottom: TabBar( padding: EdgeInsets.all(2),
              dividerColor: Colors.grey,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black,
              splashBorderRadius: BorderRadius.circular(15),
              physics: BouncingScrollPhysics(),
              labelStyle: TextStyle(color: Colors.black,fontSize: 16,fontFamily: GoogleFonts.playfairDisplay().fontFamily,fontWeight: FontWeight.w900),indicatorSize:TabBarIndicatorSize.tab ,
              tabs: [
                Tab(text: "My Bag"),
                Tab(text: "WhiteList",),
              ],
            ),
          ),
          body: TabBarView(children: [Page4Screen(),Page3Screen()]),

        ));
  }
}
