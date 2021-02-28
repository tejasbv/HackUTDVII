import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HotlineView extends StatefulWidget {
  @override
  _HotlineViewState createState() => _HotlineViewState();
}

class _HotlineViewState extends State<HotlineView> {
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.red[700],
          Colors.red[500],
          Colors.red[400],
        ])),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Hotline numbers",
              style: TextStyle(fontSize: 40, color: Colors.blue[700]),
            )),
            Card(
                child: ListTile(
                  title: Text("Disaster Distress Hotline: 1-800-985-5990"),
                ),
                color: Colors.blue[500]),
            Card(
                child: ListTile(
                  title: Text("Inclement Weather Hotline: 1-512-463-5751"),
                ),
                color: Colors.blue[200]),
            Card(
                child: ListTile(
                  title: Text("National Emergency Hotline: 911"),
                ),
                color: Colors.blue[500]),
            Card(
              child: ListTile(
                title:
                    Text("State Bar of Texas Disaster Hotline: 1-800-985-5990"),
              ),
              color: Colors.blue[200],
            ),
            Card(
                child: ListTile(
                  title: Text("Redcross Hotline: 143"),
                ),
                color: Colors.blue[500]),
            Card(
              child: ListTile(
                title: Text("Elder Care Locator: 1-800-677-1116"),
              ),
              color: Colors.blue[200],
            ),
            Card(
                child: ListTile(
                  title: Text("Suicide Hotline: 1-800-SUICIDE"),
                ),
                color: Colors.blue[500]),
            Card(
              child: ListTile(
                title: Text("United Way Crisis Helpline: 1-800-233-HELP"),
              ),
              color: Colors.blue[200],
            ),
            Card(
                child: ListTile(
                  title: Text(
                      "National Domestic Violence Hotline: 1-800-799-SAFE"),
                ),
                color: Colors.blue[500]),
            Card(
              child: ListTile(
                title: Text(
                    "National Domestic Violence Hotline Spanish: 1-800-942-6908"),
              ),
              color: Colors.blue[200],
            ),
          ],
          padding: EdgeInsets.only(bottom: 10),
        ),
      ),
    );
  }
}
