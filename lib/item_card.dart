import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';

class item_card extends StatefulWidget {
  const item_card({Key? key}) : super(key: key);

  @override
  State<item_card> createState() => _item_cardState();
}

class _item_cardState extends State<item_card> {
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
                    //

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),

                    Card(
                      // color: Color.fromARGB(255, 239, 237, 245),
                      elevation: 10,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              if (_itemCount != 0) {
                                setState(() {
                                  _itemCount--;
                                });
                              }
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text(_itemCount.toString()),
                          IconButton(
                            icon: new Icon(Icons.add),
                            onPressed: () => setState(() => _itemCount++),
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
