import 'package:flutter/material.dart';
import 'Haldua.dart';
import 'Haltiga.dart';

void main() {
  runApp(new MaterialApp(
      home: new Halsatu(),
      title: "navigasi",
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => new Halsatu(),
        '/Haldua': (BuildContext context) => new Haldua(),
        '/Haltiga': (BuildContext context) => new Haltiga(),
      }));
}

void title() => Title;

class Halsatu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}
