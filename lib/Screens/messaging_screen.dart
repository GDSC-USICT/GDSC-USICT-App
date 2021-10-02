import 'package:flutter/material.dart';
import 'package:gdsc_usict/widgets/messaging_widget.dart';

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ListTile(
                title: Text("GDSC USICT Chat"), trailing: CircleAvatar()),
          ),
          Messages()
        ],
      ),
    ));
  }
}
