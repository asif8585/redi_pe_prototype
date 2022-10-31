import 'package:flutter/material.dart';

class Scroll_Sheet extends StatefulWidget {
  Scroll_Sheet({Key? key}) : super(key: key);

  @override
  State<Scroll_Sheet> createState() => _Scroll_SheetState();
}

class _Scroll_SheetState extends State<Scroll_Sheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("list"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.dangerous),
            );
          },
        );
      },
    );
  }
}
