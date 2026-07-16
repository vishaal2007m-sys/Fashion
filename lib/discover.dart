import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

List list1 = [
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM.jpeg", "\$45", "Watch With Crystal"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM (1).jpeg", "\$45", "Bag For Style"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.53 PM.jpeg", "\$45", "Watch Limited Edition"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.53 PM (1).jpeg", "\$45", "Bag Limited Edition"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM (1).jpeg", "\$45", "Bag  For Style"],
  ["assets/WhatsApp Image 2026-07-09 at 2.25.52 PM.jpeg", "\$45", "Watch With Crystal"],
];
Set<int> selectedFavorites = {};

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        title: Text(
          "Women",
          style: TextStyle(
            color: Colors.black.withOpacity(.7),
            fontFamily: GoogleFonts.playfairDisplay().fontFamily,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.red.shade100,
        leading: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.7)),
        actions: [
          Icon(Icons.message, color: Colors.black.withOpacity(.7)),
          SizedBox(width: 17),
          Icon(Icons.search, color: Colors.black.withOpacity(.7)),SizedBox(width: 20,)
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ Divider(color: Colors.black,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [  TextButton.icon(
                        icon: Icon(Icons.sort, color: Colors.black,size: 28,),
                        style:TextButton.styleFrom(
                          backgroundColor: Colors.red.shade100,

                        ),
                        onPressed: () {},
                        label:  Text(
                          "SORT",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black,fontFamily: GoogleFonts.roboto().fontFamily,fontWeight: FontWeight.w900),
                        ),
                      ),

                    SizedBox(height: 45,
                      child: VerticalDivider(color: Colors.black,)),


                    TextButton.icon(
                      icon: Icon(Icons.filter_alt_outlined, color: Colors.black,size: 28,),
                      style:TextButton.styleFrom(
                        backgroundColor: Colors.red.shade100,

                      ),
                      onPressed: () {},
                      label:  Text(
                        "Filter",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black,fontFamily: GoogleFonts.roboto().fontFamily,fontWeight: FontWeight.w900),
                      ),
                    ),

                    // Expanded(
                    //   child: OutlinedButton.icon(
                    //     icon: Icon(Icons.sort, color: Colors.black,size: 24,),
                    //     style: OutlinedButton.styleFrom(
                    //       backgroundColor: Colors.red.shade100,
                    //       shape: BeveledRectangleBorder(),
                    //     ),
                    //     onPressed: () {},
                    //     label:  Text(
                    //       "SORT",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(fontSize: 25, color: Colors.black,fontFamily: GoogleFonts.roboto().fontFamily),
                    //     ),
                    //   ),
                    // ),
                    //
                    // Expanded(
                    //   child: OutlinedButton.icon(
                    //     icon: Icon(
                    //       Icons.filter_alt_outlined,
                    //       color: Colors.black,size: 24,
                    //     ),
                    //     style: OutlinedButton.styleFrom(
                    //       backgroundColor: Colors.red.shade100,
                    //       shape: BeveledRectangleBorder(),
                    //     ),
                    //     onPressed: () {},
                    //     label:  Text(
                    //       "FILTER",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(fontSize: 25, color: Colors.black,fontFamily: GoogleFonts.roboto().fontFamily,),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Divider(color: Colors.black,)
                ,

                GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.59,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      decoration: BoxDecoration(color: Colors.red.shade100),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
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
                                        Icons.favorite_outlined,
                                        color: selectedFavorites.contains(index)
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                ),
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
        ),
      ),
    );
  }
}
