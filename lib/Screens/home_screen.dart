import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_usict/Widgets/project_card_widget.dart';

import '../Widgets/appbar_background_widget.dart';
import '../Widgets/upcoming_event_card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.03),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.05,
            vertical: mediaQuery.size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: mediaQuery.size.height * 0.17,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton.icon(
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  label: Text("Head over to Ideas Portal"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQuery.size.height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Projects",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      child: Text("View More"),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              // GridView.count(
              //   crossAxisCount: 2,
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   children: List.generate(
              //     4,
              //     (index) => ProjectCard(),
              //   ),
              // ),
              Container(
                height: mediaQuery.size.height * 0.33,
                width: double.infinity,
                child: Transform.rotate(
                  angle: -pi / 2,
                  child: ListWheelScrollView(
                    diameterRatio: 4,
                    squeeze: 1.4,
                    offAxisFraction: -1.3,
                    physics: FixedExtentScrollPhysics(),
                    itemExtent: mediaQuery.size.height * 0.3,
                    children: List.generate(
                      10,
                      (index) => Transform.rotate(
                        angle: pi / 2,
                        child: ProjectCard(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// GridView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// ),
// itemBuilder: (ctx, index) => ProjectCard(),
// itemCount: 10,
// ),
