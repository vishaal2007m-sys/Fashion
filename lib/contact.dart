import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List list = [
    ["assets/1.jpg", "18,Arav street,Dubai", " Scarlet-123567890"],
    ["assets/2.jpg", "Office of Barack and Michelle Obama at P.O. Box 91000, Washington, DC 20066.", "ROCK -123567890"],
    ["assets/3.jpg", "The Iron Man is located at Shastri Nagar, Civil Aerodrome Post, Coimbatore, Tamil Nadu 641014.", "Soniya -123567890"],
    ["assets/4.jpeg", "Native Sons of the Golden West Park Rd - Redwood City, CA", "Jhonny -123567890"],
    ["assets/5.jpg", "4756 Dingleberry Rd NE, Iowa City, IA 52240", "Chris -123567890"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        title: Text(
          "SHOPPING ADDRESS",
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(.7),
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,  color: Colors.black.withOpacity(.7)),
        actions: [Icon(Icons.add, color: Colors.black.withOpacity(.7)),SizedBox(width: 20,)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            tileColor: Colors.pink.shade50,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(list[index][0]),
                            ),
                            title: Text(
                              list[index][1].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black.withOpacity(.7),fontFamily: GoogleFonts.roboto().fontFamily),
                            ),
                            subtitle: Text(
                              list[index][2].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: GoogleFonts.roboto().fontFamily),
                            ),
                          ),
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
    );
  }
}
