import 'package:flutter/material.dart';

class HotlineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[700],
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.yellowAccent[700],
            Colors.yellowAccent[500],
            Colors.yellowAccent[400],
          ])),
      width: double.infinity,
      height: double.infinity,
      child: Text("hello"),
    );
  }
}
