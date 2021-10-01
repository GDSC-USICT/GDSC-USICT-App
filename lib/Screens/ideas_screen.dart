import 'package:flutter/material.dart';
import 'package:gdsc_usict/widgets/idea_widget.dart';

class IdeasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            IdeaWidget(),
            IdeaWidget(),
            IdeaWidget(),
            IdeaWidget(),
          ],
        ),
      ),
    );
  }
}
