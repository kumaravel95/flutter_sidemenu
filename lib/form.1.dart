import 'package:flutter/material.dart';

class PersonData {
  String name = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
}

class FormScreen1 extends StatelessWidget {
  
  final PersonData person = new PersonData();

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.label),
            title: const Text('Nick'),
            subtitle: const Text('None'),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Birthday'),
            subtitle: const Text('February 20, 1980'),
          ),
          new ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Contact group'),
            subtitle: const Text('Not specified'),
          )
        ]
      );
  }
}
