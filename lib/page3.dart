import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3Screen extends StatefulWidget {
  const Page3Screen({super.key});

  @override
  State<Page3Screen> createState() => _Page3ScreenState();
}

List list1 = [
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM.jpeg", "\$55", "Watch with ultra "],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM (1).jpeg", "\$45", "Bag with leather"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.53 PM.jpeg", "\$65", "Watch with premium"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.53 PM (1).jpeg", "\$35", "Bag with sonic stap"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM (1).jpeg", "\$43", "Bag emeral stone"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM.jpeg", "\$56", "Watch with shiner"],
];

Set<int> selectedFavorites = {};
class _Page3ScreenState extends State<Page3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red.shade100,
      body: SingleChildScrollView(physics:AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,physics: BouncingScrollPhysics(),

                  itemCount: list1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(12),
                              child: Image.asset(
                                list1[index][0].toString(),
                                fit: BoxFit.fill,
                                height: 150,
                                width:double.infinity,
                              ),
                            ),

                            SizedBox(height: 5),

                            Row(
                              children: [
                                Text(
                                  list1[index][1].toString(),
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.onest().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),SizedBox(width: 80,),  Align(
                                  alignment: AlignmentGeometry.topRight,
                                  child: IconButton(
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
                                      Icons.favorite,
                                      color: selectedFavorites.contains(index)
                                          ? Colors.red
                                          : Colors.grey,
                                    )  ),
                                ),
                              ],
                              
                              
                            ),
                            SizedBox(height: 10),
                            Align(alignment: AlignmentGeometry.bottomLeft,
                              child: Text(
                                list1[index][2].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
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
        ),
      ),
    );
  }
}
