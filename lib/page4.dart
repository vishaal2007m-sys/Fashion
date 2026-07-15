import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4Screen extends StatefulWidget {
  const Page4Screen({super.key});

  @override
  State<Page4Screen> createState() => _Page4ScreenState();
}

List list = [
  ["assets/bag1.jpg", "Bangle | bag XXL", "Size ; L", "Color: Yellow", "\$200"],
  ["assets/watch.jpg", "WOMENS WATCH", "Size: M", "Color: Gold", "\$100"],
];

class _Page4ScreenState extends State<Page4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                list[index][0],
                                width: 150,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    list[index][1],
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.playfairDisplay()
                                          .fontFamily,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  SizedBox(width: 40),
                                  Align(
                                    alignment: AlignmentGeometry.topRight,
                                    child: Icon(Icons.close),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),

                              Text(
                                list[index][2],
                                style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Colors.black.withOpacity(.7),
                                  fontSize: 13,
                                ),
                              ),

                              const SizedBox(height: 30),

                              Text(
                                list[index][3],
                                style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Colors.black.withOpacity(.7),
                                  fontSize: 12,
                                ),
                              ),

                              const SizedBox(height: 50),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    list[index][4],
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(width: 40),

                                  Align(
                                    alignment: AlignmentGeometry.bottomRight,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shadowColor: Colors.black,
                                        overlayColor: Colors.black,
                                        foregroundColor: Colors.black,
                                        disabledBackgroundColor: Colors.black,
                                        backgroundColor: Colors.red.shade100,
                                        shape: ContinuousRectangleBorder(),
                                        iconColor: Colors.black,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Move\nWishlist",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),Divider(height: 20,)
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
