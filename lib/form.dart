import 'package:flutter/material.dart';
import 'secondscreen.dart';

class PersonData {
  String name = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
}

class FormScreen extends StatelessWidget {
  
  final PersonData person = new PersonData();

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new ListTile(
            title: new TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter Your Name',
                labelText: 'Name',
              ),
              keyboardType: TextInputType.text,
              onSaved: (String value) { person.name = value; },
            )
          ),
          new ListTile(
            title: new TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter Your Phone Number',
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
              onSaved: (String value) { person.phoneNumber = value; },
            )
          ),
          new ListTile(
            title: new TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.email),
                hintText: 'Enter Your Email',
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (String value) { person.email = value; },
            )
          ),
          new ListTile(
            title: new TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.data_usage),
                hintText: 'Enter Your DOB',
                labelText: 'DOB',
              ),
              keyboardType: TextInputType.datetime,
              onSaved: (String value) { person.email = value; },
            )
          ),
          const Divider(
            height: 60.0,
          ),
          new Row(
            children: <Widget>[
               new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new SecondScreen()),
                    );
                  },
                  child: new Text('Sample Push!'),
               )
            ],
          )
        ]
      );
  }
}
