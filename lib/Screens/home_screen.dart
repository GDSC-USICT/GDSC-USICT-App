import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/appbar_background_widget.dart';
import '../Widgets/upcoming_event_card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xffedecf3),
      appBar: PreferredSize(
        preferredSize: Size(
          mediaQuery.size.width,
          mediaQuery.size.height * 0.30,
        ),
        child: Stack(
          children: [
            AppBarBackground(),
            Container(),
            Positioned(
              top: mediaQuery.size.height * 0.17,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (ctx, index) => UpcomingEventCard(
                  title: "GDSC HMMMMM",
                  date: "30th Oct",
                  time: "5:30PM",
                  mentor: "Pulkit Asri",
                  technology: "Android",
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
