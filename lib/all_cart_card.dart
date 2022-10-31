import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';

class all_cart_cards extends StatefulWidget {
  const all_cart_cards({Key? key}) : super(key: key);

  @override
  State<all_cart_cards> createState() => _all_cart_cardsState();
}

class _all_cart_cardsState extends State<all_cart_cards> {
  int _itemCount = 0;
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
                        children: <Widget>[
                          _itemCount != 0
                              ? new IconButton(
                                  icon: new Icon(Icons.remove),
                                  onPressed: () => setState(() => _itemCount--),
                                )
                              : new Container(),
                          Text(_itemCount.toString()),
                          IconButton(
                              icon: new Icon(Icons.add),
                              onPressed: () => setState(() => _itemCount++))
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
