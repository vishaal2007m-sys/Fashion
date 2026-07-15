import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

List list1 = [
  ["assets/bag1.jpg", "\$55", "Yellow BAG"],
  ["assets/bag2.jpg", "\$65", "Mini BAG"],
  ["assets/chain1.jpg", "\$75", "Evil Chain"],
  ["assets/img1.jpg", "\$85", "White Dress"],
  ["assets/watch.jpg", "\$35", "Gem Watch"],
  ["assets/watch.jpg.2.jpg", "\$25", "Marbal Watch"],
];

class _InfoScreenState extends State<InfoScreen> {
  List<bool> isFavorite = List.generate(list1.length, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        leading: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.7)),
        actions: [
          Icon(Icons.message, color: Colors.black.withOpacity(.7)),
          SizedBox(width: 16),
          Icon(Icons.search, color: Colors.black.withOpacity(.7)),
          SizedBox(width: 20),
        ],
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Women's\nNew Arrivals",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 40,
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
              ),
            ),

            SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: Icon(Icons.sort, color: Colors.black,size: 28,),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red.shade100,
                        shape: BeveledRectangleBorder(),
                      ),
                      onPressed: () {},
                      label: Text(
                        "SORT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,size: 28,
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: BeveledRectangleBorder(),
                      ),
                      onPressed: () {},
                      label: Text(
                        "FILTER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5),
                ],
              ),
            ),

            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemCount: list1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  decoration: BoxDecoration(color: Colors.red.shade100),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Align(
                          child: ClipRRect(
                            child: Image.asset(
                              list1[index][0].toString(),
                              fit: BoxFit.fill,
                              height: 210,
                              width: double.infinity,
                            ),
                          ),
                        ),

                        SizedBox(height: 5),

                        Row(
                          children: [
                            Text(
                              list1[index][1].toString(),
                              style: TextStyle(
                                fontFamily:
                                    GoogleFonts.playfairDisplay().fontFamily,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(width: 100),
                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Icon(Icons.favorite_border_outlined),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: AlignmentGeometry.bottomLeft,
                          child: Text(
                            list1[index][2].toString(),
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontFamily:
                                  GoogleFonts.roboto().fontFamily,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
