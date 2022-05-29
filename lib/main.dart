import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  mamm() {
    var mapA = HashMap<String, String>(); //هذا النوع غير مرتب عند الطباعة
    mapA['morocco'] = 'mm';
    mapA['algeria'] = '2';
    mapA['egypt'] = '3';
    mapA['syria'] = '4';
    mapA['iraq'] = '5';
  }

  Map<String, int> mapB = {
    'youssef': 1411,
    'mohamed': 255,
    'ahmed': 3544,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('heyy'),
        ),
        body: ListView.builder(
          itemCount: mapB.length,
          itemBuilder: (BuildContext context, int index) {
            String key = mapB.keys.elementAt(index);
            return new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("$key"),
                  subtitle: new Text("${mapB[key]}"),
                ),
                new Divider(
                  height: 2.0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
