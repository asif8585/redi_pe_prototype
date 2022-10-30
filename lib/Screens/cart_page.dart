import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/all_cart_card.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 42,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/5a/ae/50/5aae503e4f037a5a4375944d8861fb6a.png"),
                radius: 40,
              ),
            ),
          ),
        ),
        Text(
          "Buisness Name",
          style: GoogleFonts.anybody(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Customer Can Order Any Time Anywhere",
            style: GoogleFonts.ubuntu(),
          ),
        ),
        Divider(
          thickness: 0.8,
          color: Colors.deepPurpleAccent,
          endIndent: 20,
          indent: 20,
        ),
        Text(
          "Cart(Total Items : 4)",
          style: GoogleFonts.aBeeZee(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Expanded(
          child: ListView(
            children: [
              all_cart_cards(),
              all_cart_cards(),
              all_cart_cards(),
              all_cart_cards(),
              all_cart_cards(),
              all_cart_cards(),
            ],
          ),
        )
      ],
    );
  }
}
