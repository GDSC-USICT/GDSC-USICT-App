import 'package:flutter/material.dart';
import 'package:gdsc_usict/Styles/messaging_styles.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height - 50;
    double w = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(28))),
        height: h * (6 / 7),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: h * (5.4 / 7),
                child: ListView(
                  reverse: true,
                  children: [
                    receive("Hey nice to meet you", "karan", "4:27 pm", w),
                    send("Hello my name is aakash", "aakash", "4:26 pm", w),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18))),
                height: h * (0.6 / 7),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: w - 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration:
                                InputDecoration(hintText: "Type Message.."),
                          ),
                        )),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.attach_file_sharp)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                  ],
                ),
              )
            ],
          ),
        ));
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
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
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
                      style: textStyle(Colors.white, 18.0, FontWeight.normal),
                    ),
                    Text(
                      datetime,
                      style: textStyle(Colors.white, 14.0, FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(message,
                        style:
                            textStyle(Colors.white, 16.0, FontWeight.normal)))
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
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(10),
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
                      style: textStyle(Colors.black, 18.0, FontWeight.normal),
                    ),
                    Text(
                      datetime,
                      style: textStyle(Colors.black, 14.0, FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(message,
                        style:
                            textStyle(Colors.black, 16.0, FontWeight.normal)))
              ],
            ),
          ),
        ),
      ));
}
