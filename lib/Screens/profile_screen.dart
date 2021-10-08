import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gdsc_usict/constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

    return Scaffold(
      backgroundColor: Color(0xFFF2F1F6),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color(0xFF87D699),
                    Color(0xFF45B1A4),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: height * 0.15,
                width: width,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    iconSize: 30,
                    color: Colors.white,
                    icon: Icon(Icons.chevron_left),
                    onPressed: () {
                      print('Button pressed');
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 0.85,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 0.85,
                  height: height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
