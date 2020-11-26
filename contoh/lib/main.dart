
import 'package:flutter/material.dart';

import './hal_card.dart' as card;
import './hal_checkbox.dart' as check;

void main() {
  runApp(new MaterialApp(
    title: "TK APPS",
    home: new HalPertama(),
    routes: <String, WidgetBuilder> {
      '/HalPertama' : (BuildContext context) => new HalPertama(),
      '/HalKedua' : (BuildContext context) => new HalKedua(),
    },
  ));
}

class HalPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        title: new Text("Start Menu"),
      ),
      body: new Center(
        child: new RaisedButton(
          padding: new EdgeInsets.all(12.0),
          color: Colors.blue[200],
          child: Text("Start", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
            onPressed: (){
            Navigator.pushNamed(context, '/HalKedua');
          },
          ),
        ),
      );
  }
}

class HalKedua extends StatefulWidget {
  @override
  _HalKeduaState createState() => _HalKeduaState();
}

class _HalKeduaState extends State<HalKedua> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        title: new Text("Halaman Utama"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.image),text: "images & text",),
            new Tab(icon: new Icon(Icons.check_box),text: "checkbox",),
          ], 
        ),
      ),
     
    body: new TabBarView(
      controller: controller,
      children: <Widget>[
        new card.Card(),
        new check.Check(),
      ],
    ),
    );
  }
}
