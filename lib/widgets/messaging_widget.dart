import 'package:flutter/material.dart';
import 'package:gdsc_usict/Styles/messaging_styles.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * (5 / 6),
      child: ListView(),
    );
  }
}

send(message, name, datetime, w) {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: w * (5 / 6),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.green,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      name,
                      style: textStyle(Colors.white, 18, FontWeight.normal),
                    ),
                    Text(
                      datetime,
                      style: textStyle(Colors.white, 14, FontWeight.normal),
                    ),
                  ],
                ),
                Text(message,
                    style: textStyle(Colors.white, 14, FontWeight.normal))
              ],
            ),
          ),
        ),
      ));
}

receive(message, name, datetime, w) {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: w * (5 / 6),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue[200],
              Colors.green[200],
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      name,
                      style: textStyle(Colors.black, 18, FontWeight.normal),
                    ),
                    Text(
                      datetime,
                      style: textStyle(Colors.black, 14, FontWeight.normal),
                    ),
                  ],
                ),
                Text(message,
                    style: textStyle(Colors.black, 14, FontWeight.normal))
              ],
            ),
          ),
        ),
      ));
}
