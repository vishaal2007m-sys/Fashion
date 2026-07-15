import 'package:flutter/material.dart';

class Page9Screen extends StatefulWidget {
  const Page9Screen({super.key});

  @override
  State<Page9Screen> createState() => _Page9ScreenState();
}

class _Page9ScreenState extends State<Page9Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(),
    ),),);
  }
}
