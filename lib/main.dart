import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';
import 'package:redi_pe_prototype/Screens/homeScreen.dart';
import 'package:redi_pe_prototype/all_cart_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade400,
          title: Text(
            "RediPe",
            style: GoogleFonts.aBeeZee(
                fontSize: 23, fontWeight: FontWeight.w600, letterSpacing: 1),
          ),
          leading: const Icon(Icons.logo_dev),
          actions: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.shopping_cart),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart_Page(),
                    ));
              },
            ),
          ],
        ),
        body: Cart_Page(),
      ),
    );
  }
}
