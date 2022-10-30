import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_pe_prototype/Screens/cart_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            cursorColor: Colors.deepPurpleAccent,
            decoration: InputDecoration(
                focusColor: Colors.deepPurpleAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
                label: Text(
                  "Addres Bar",
                  style: GoogleFonts.ubuntu(),
                ),
                hintText: "Enter Address"),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Search",
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
          ),
        ),

        //Diveder

        Divider(
          thickness: 2,
          height: 40,
          endIndent: 63,
          indent: 63,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}
