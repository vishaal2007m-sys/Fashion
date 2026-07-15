import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayFairFont extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? textAlignment;

  const PlayFairFont({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.textAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: GoogleFonts.playfairDisplay(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}



//
// class text extends StatelessWidget {
//   final String Text;
//   final Color color;
//   final double fontSize;
//   final FontWeight fontWeight;
//   final TextAlign? textAlignment;
//
//   const text({
//     super.key,
//     required this.Text,
//     required this.color,
//     required this.fontSize,
//     required this.fontWeight,
//     this.TextAlignment,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomText(
//       text: "Hello World",
//       color: Colors.black,
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//       fontFamily: "MyCustomFont",
//     )
//   }
// }


class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? textAlignment;
  final String? fontFamily;


  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.textAlignment,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily, 
      ),
    );
  }
}