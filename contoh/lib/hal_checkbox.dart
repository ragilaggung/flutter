import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {

  Map<String, bool> values = {
    'Sheriff Woody': false,
    'Buzz Lightyear': false,
    'Slinky Dog': false,
    'Bo Peep': false,
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(children: 
        values.keys.map((String key) {
          return new CheckboxListTile(
            title: new Text(key),
            value: values[key], 
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
        );
        }) .toList(),
    ),
    );
  }
}

void main() {
  runApp(new MaterialApp(home: new Check(),debugShowCheckedModeBanner: false));
}
