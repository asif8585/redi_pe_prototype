import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_ka_item_card.dart';
import 'package:redi_pe_prototype/item_card.dart';
import 'package:redi_pe_prototype/scrollable_sheet.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    double text_item_quantity = 1;
    return Scaffold(body: my_cart());
  }
}

class my_cart extends StatelessWidget {
  String? total_items = "4";
  String? redi_ka_name = "Redi Name";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 46,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://www.pngitem.com/pimgs/m/127-1271967_food-cart-indian-street-food-cart-hd-png.png"),
                radius: 43,
              ),
            ),
          ),
        ),
        Text(
          redi_ka_name!,
          style: GoogleFonts.aBeeZee(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(15, 40, 48, 8)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Customer Can Order Any Time Anywhere",
            style: GoogleFonts.aBeeZee(),
          ),
        ),
        const Divider(
          thickness: 0.8,
          color: Colors.deepPurpleAccent,
          endIndent: 20,
          indent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Itmes :",
              style: GoogleFonts.aBeeZee(
                  fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              total_items!,
              style: GoogleFonts.aBeeZee(fontSize: 20),
            )
          ],
        ),

        //other page of list tile added here

        cart_ka_item_card()
      ],
    );
  }
}
