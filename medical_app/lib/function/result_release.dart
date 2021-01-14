import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class Result extends StatelessWidget {

  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Release'),
        actions: <Widget>[
          FlatButton(
            child: Row(
                children: <Widget>[
                  Text('Back'),
                ]
            ),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(Home.routeName);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
            'No Test Available'
        ),
      ),
    );
  }
}
