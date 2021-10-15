import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gdsc_usict/constants.dart';
import 'package:gdsc_usict/models/users.dart';
import 'package:gdsc_usict/functions.dart';
import 'package:gdsc_usict/models/posts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    final user = UserPreferences.myUser;

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
                      print('Back pressed');
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
                    borderRadius:
                        BorderRadius.all(Radius.circular(height / 38)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height / 35,
                        width: width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.7,
                            ),
                            IconButton(
                              onPressed: () {
                                print('Edit pressed');
                              },
                              icon: Icon(Icons.edit),
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: height * 0.08,
                        backgroundImage: AssetImage(user.imagePath),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              user.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              user.email,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              user.about,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Stack(
                    children: [
                      ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, i) => Column(
                          children: <Widget>[
                            ListTile(
                              leading: Container(
                                width: width / 6,
                                height: height / 15,
                                child: Image(
                                  image: AssetImage(data[i].imagePath),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              title: Text(
                                data[i].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  formattedDate(data[i].date),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height / 19,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height / 67,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width / 30,
                                ),
                                Text(
                                  'Posts',
                                  style: TextStyle(
                                      fontSize: height / 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width / 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: width * 0.85,
                  height: height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.all(Radius.circular(height / 38)),
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
