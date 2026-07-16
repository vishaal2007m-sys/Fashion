import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/common/custom_font.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List list1 = [
  ["assets/bag1.jpg", "Bracelet"],
  ["assets/chain1.jpg", "Chain"],
  ["assets/bag2.jpg", "Jewel"],
  ["assets/watch.jpg", "Fashion"],
  ["assets/chain1.jpg", "Bag"],
  ["assets/watch.jpg.2.jpg", "Jewel"],
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        title: PlayFairFont(
          text: "Bag More",
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.w500,
        ),

        centerTitle: true,
      ),


      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: list1.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: const Color(0xFFC29504),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  list1[index][0].toString(),
                                ),
                                radius: 40,
                              ),
                            ),
                          ),

                          // PlayFairFont(
                          //   text: list1[index][1].toString(),
                          //   color: Colors.black,
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.w900,
                          // ),
                          Text(
                            list1[index][1].toString(),
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 5),
                          Divider(thickness: 1),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(thickness: 1),
            SizedBox(height: 20),
            Center(
              child: PlayFairFont(
                textAlignment: TextAlign.center,
                text: "New Bags \n Collections",
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),

            Image.asset("assets/bag_stack-removebg-preview (1).png"),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
