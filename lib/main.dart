import 'package:flutter/material.dart';
import 'form.dart';
import 'form.1.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int screen = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject'),
      ),
      drawer: new Drawer(
        child: new Column(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              "Firstname Lastname",
              style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)
            ),
            accountEmail: new Text(
              "firstname@lastname.com",
              style: new TextStyle(color: Colors.blueGrey[50]),
              ),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown, child: new Text("FL")),
          ),
          new ListTile(
            title: new Text('Form 1'),
            onTap: () {
              this.setState(() {
                screen = 1;
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Form 2'),
            onTap: () {
              this.setState(() {
                screen = 0;
              });
              Navigator.pop(context);
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ]
        )
      ),
      body: (
        screen == 0 ? new FormScreen() : new FormScreen1()
      )
    );
  }
}