import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class Setting extends StatefulWidget {

  static const routeName = '/setting';
  @override
  _Setting createState() => new _Setting();
}

class _Setting extends State<Setting> {

  bool location = true;

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
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
      body:  Container(
        child:  Column(
            children: <Widget>[
              SwitchListTile(
                  title: Text('Enable Location Recording'),
                  value: location,
                  onChanged: (bool loc){
                    setState(() {
                      location = loc;
                    });
                  })
            ],
        ),
      ),
    );
  }
}