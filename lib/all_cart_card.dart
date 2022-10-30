import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';

class all_cart_cards extends StatelessWidget {
  const all_cart_cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // item details card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              "http://www.pngimagesfree.com/Fruit/Mix-fruit-png/Thumb/Fruits_in_basket_png_pictur.png"),
                          width: 130,
                        ),
                        Text(
                          "Example Fruits",
                          style:
                              GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Price: ₹ 200",
                          style:
                              GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Discount: (10%)",
                          style:
                              GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    // increment decremernt btn
                    Card(
                      color: Color.fromARGB(255, 239, 237, 245),
                      elevation: 10,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                          Text(
                            "23",
                            style: GoogleFonts.bonaNova(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
