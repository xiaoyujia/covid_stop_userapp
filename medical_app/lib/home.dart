import 'package:flutter/material.dart';
import 'login/login.dart';
import 'package:covid_stop/function/qr_code.dart';
import 'package:covid_stop/function/setting.dart';
import 'package:covid_stop/function/result_release.dart';

class Home extends StatelessWidget {

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID STOP - Medical'),
        actions: <Widget>[
        ],
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: Text('Sign out'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed(Login.routeName);
              },
            )
          ],
        )
      ),

      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[

            //QR Code
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(QRCode.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.camera_alt_rounded,
                        size: 80,
                      ),
                      Text('QR Code Scan')
                    ],
                  ),
                ),
              ),
            ),

            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(Result.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.file_upload,
                        size: 80,
                      ),
                      Text('Result Release')
                    ],
                  ),
                ),
              ),
            ),

            //Setting
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(Setting.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.settings_applications_rounded,
                        size: 80,
                      ),
                      Text('Setting')
                    ],
                  ),
                ),
              ),
            )
          ]
        ),
      ) ,
    );
  }
}
