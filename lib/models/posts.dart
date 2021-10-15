import 'package:flutter/material.dart';

class PostModel {
  final String title;
  final String content;
  final DateTime date;
  final String imagePath;

  PostModel(
      {@required this.title,
      @required this.content,
      @required this.date,
      @required this.imagePath});
}

List<PostModel> data = [
  PostModel(
      title: 'GDSC EVENT',
      content:
          'Google Developer Students Club USICT brings you the ultimate hackathon experience in your college on 12th October 2021 in Seminar Hall E-block',
      imagePath: 'images/i1.png',
      date: DateTime.utc(2021, 9, 3)),
  PostModel(
      title: 'State management in Flutter',
      content: 'We are discussing state management in Flutter using Redux',
      imagePath: 'images/i2.png',
      date: DateTime.utc(2021, 10, 11)),
];
