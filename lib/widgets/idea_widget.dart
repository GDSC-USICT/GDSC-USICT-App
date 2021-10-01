import 'package:flutter/material.dart';

class IdeaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      child: SizedBox(
        child: Card(
          color: Colors.blueGrey[200],
          shadowColor: Colors.amber[900],
          child: InkWell(
            splashColor: Colors.amber[300],
            onTap: () {},
            child: ListTile(
              trailing: FloatingActionButton(
                mini: true,
                backgroundColor: Colors.blueGrey[900],
                onPressed: () {},
                child: Icon(Icons.mail, color: Colors.white),
              ),
              title: Text("Idea"),
              subtitle: Text(
                'Project / Shared Idea',
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
