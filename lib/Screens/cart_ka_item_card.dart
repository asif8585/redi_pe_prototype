import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cart_ka_item_card extends StatefulWidget {
  cart_ka_item_card({Key? key}) : super(key: key);

  @override
  State<cart_ka_item_card> createState() => _cart_ka_item_cardState();
}

class _cart_ka_item_cardState extends State<cart_ka_item_card> {
  String item_name_text = "Fruit basket";
  String item_price = "₹200";
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shadowColor: Colors.green,
              elevation: 10,
              color: Color.fromARGB(255, 233, 249, 216),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Image(
                          image: NetworkImage(
                              "http://www.pngimagesfree.com/Fruit/Mix-fruit-png/Thumb/Fruits_in_basket_png_pictur.png"),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item_name_text,
                              style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(15, 40, 48, 8),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                          Text(
                            item_price,
                            style: GoogleFonts.teko(
                                fontWeight: FontWeight.w700,
                                fontSize: 19,
                                color: Colors.black54),
                          ),
                        ],
                      ),

                      // buttons card for increment decrement and delete
                      Column(children: [
                        Card(
                          color: Color.fromARGB(255, 211, 238, 180),
                          elevation: 10,
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete_outlined,
                                      size: 26,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ],
                              ),
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
                              Text(
                                _itemCount.toString(),
                                style: GoogleFonts.robotoMono(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 67, 65, 65)),
                              ),
                              IconButton(
                                icon: new Icon(Icons.add),
                                onPressed: () => setState(() => _itemCount++),
                              ),
                            ],
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
