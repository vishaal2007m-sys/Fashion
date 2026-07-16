import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

List list1 = [
  ["assets/bag1.jpg", "\$55", "Yellow BAG With leather"],
  ["assets/bag2.jpg", "\$65", "Mini BAG With Crystal"],
  ["assets/chain1.jpg", "\$75", "Evil Chain With Luck"],
  ["assets/img1.jpg", "\$85", "White Dress For Wedding"],
  ["assets/watch.jpg", "\$35", "Gem Watch With Gems"],
  ["assets/watch.jpg.2.jpg", "\$25", "Marbal Watch With Marbal"],
];

Set<int> selectedFavorites = {};
int selectedButton = -1;


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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          selectedButton = selectedButton == 0 ? -1 : 0;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                        selectedButton == 0 ? Colors.black : Colors.transparent,
                        side: const BorderSide(color: Colors.black),shape: BeveledRectangleBorder()
                      ),
                      icon: Icon(
                        Icons.sort,
                        color: selectedButton == 0 ? Colors.white : Colors.black,size: 28
                      ),
                      label: Text(
                        "SORT",
                        style: TextStyle(
                          color: selectedButton == 0 ? Colors.white : Colors.black,fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          selectedButton = selectedButton == 1 ? -1 : 1;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                        selectedButton == 1 ? Colors.black : Colors.transparent,
                        side: const BorderSide(color: Colors.black),shape: BeveledRectangleBorder()
                      ),
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: selectedButton == 1 ? Colors.white : Colors.black,size: 28
                      ),
                      label: Text(
                        "FILTER",
                        style: TextStyle(
                          color: selectedButton == 1 ? Colors.white : Colors.black,fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,fontSize: 16,
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
                childAspectRatio: 0.58,
                crossAxisSpacing: 8,
                mainAxisSpacing: 10,
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
                            SizedBox(width: 80),
                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child:IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (selectedFavorites.contains(index)) {
                                      selectedFavorites.remove(index);
                                    } else {
                                      selectedFavorites.add(index);
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite_outline_outlined,
                                  color: selectedFavorites.contains(index)
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              ),),
                          ],
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: AlignmentGeometry.bottomLeft,
                          child: Text(
                            list1[index][2].toString(),
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontFamily:
                                  GoogleFonts.roboto().fontFamily,
                              fontSize: 12,
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
