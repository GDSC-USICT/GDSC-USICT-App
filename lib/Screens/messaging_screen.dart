import 'package:flutter/material.dart';
import 'package:gdsc_usict/Styles/messaging_styles.dart';
import 'package:gdsc_usict/widgets/messaging_widget.dart';

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.blueAccent,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 20, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "GDSC USICT Community Forum",
                    style: textStyle(Colors.white, 25.0, FontWeight.bold),
                  ),
                ),
              ),
              Messages()
            ],
          ),
        ),
      ),
    );
  }
}
