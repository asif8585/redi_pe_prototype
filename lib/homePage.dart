import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Center(
        child: Text(
          " Home Page will appear after clicking RediPe Logo",
          style: GoogleFonts.ubuntuMono(fontSize: 40),
        ),
      )),
    );
  }
}
