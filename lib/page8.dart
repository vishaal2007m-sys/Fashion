import 'package:flutter/material.dart';

class Page8Screen extends StatefulWidget {
  const Page8Screen({super.key});

  @override
  State<Page8Screen> createState() => _Page8ScreenState();
}

class _Page8ScreenState extends State<Page8Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EDIT PROFILE"),centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "NAME",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "USER NAME ",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "JOB",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "DATE",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "E-MAIL",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "NUMBER",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "GENDER",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "WEBSITE",
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.blueAccent,
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Text("SWITCH TO PROFESSIONAL ACCOUNTS",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),)
,SizedBox()


            ],
          ),
        ),
      ),   bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          label: "Search",
        ), BottomNavigationBarItem(
          icon: Icon(Icons.add, color: Colors.red),
          label: "add",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call, color: Colors.red),
          label: "shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          label: "Conatct",
        ),
      ],
    ),
    );
  }
}
