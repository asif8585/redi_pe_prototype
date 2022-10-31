import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';
import 'package:redi_pe_prototype/Screens/homeScreen.dart';
import 'package:redi_pe_prototype/item_card.dart';
import 'package:redi_pe_prototype/scrollable_sheet.dart';

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
        primarySwatch: Colors.lightGreen,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor:,
        title: Text(
          "RediPe",
          style: GoogleFonts.pacifico(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              color: Color.fromARGB(255, 63, 61, 61)),
        ),
        leading: CircleAvatar(
          child: Image.asset("assets/images/avatar.png"),
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 63, 61, 61),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart_Page()));
            },
          ),
        ],
      ),
      body: Cart_Page(),
    );
  }
}
