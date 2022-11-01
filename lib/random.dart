import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class random_page extends StatelessWidget {
  const random_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        " Random Page",
        style: GoogleFonts.ubuntuMono(fontSize: 40),
      )),
    );
  }
}
