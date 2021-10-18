import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingEventCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String technology;
  final String mentor;

  const UpcomingEventCard({
    @required this.title,
    @required this.date,
    @required this.time,
    @required this.technology,
    @required this.mentor,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.size.width * 0.03),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.02,
        ),
        padding: EdgeInsets.symmetric(
          vertical: mediaQuery.size.height * 0.02,
          horizontal: mediaQuery.size.width * 0.05,
        ),
        height: mediaQuery.size.height * 0.2,
        width: mediaQuery.size.width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(radius: 25),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "$title",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "$date $time",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Technology: $technology",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Mentor: $mentor",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                    radius: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
