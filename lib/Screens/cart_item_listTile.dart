import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_btn_item_listTile extends StatefulWidget {
  Text_btn_item_listTile({Key? key}) : super(key: key);

  @override
  State<Text_btn_item_listTile> createState() => _Text_btn_item_listTileState();
}

class _Text_btn_item_listTileState extends State<Text_btn_item_listTile> {
  @override
  Widget build(BuildContext context) {
    int item_counter = 1;
    int _itemCount = 0;
    return Expanded(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListTile(
              title: SizedBox(
                height: 100,
                child: Image(
                  image: NetworkImage(
                      "http://www.pngimagesfree.com/Fruit/Mix-fruit-png/Thumb/Fruits_in_basket_png_pictur.png"),
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Example Fruits",
                        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Price: ₹ 200",
                        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Discount: (10%)",
                        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(children: [
                    Row(
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
                  ])
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
