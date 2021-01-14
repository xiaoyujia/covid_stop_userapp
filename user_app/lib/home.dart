import 'package:flutter/material.dart';
import 'login/login.dart';
import 'package:covid_stop/function/announcement.dart';
import 'package:covid_stop/function/my_status.dart';
import 'package:covid_stop/function/my_test_result.dart';
import 'package:covid_stop/function/qr_code.dart';
import 'package:covid_stop/function/self_claim.dart';
import 'package:covid_stop/function/setting.dart';

class Home extends StatelessWidget {

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID STOP'),
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
            //My Status
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(MyStatus.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_box_rounded,
                        size: 80,
                      ),
                      Text('My Status')
                    ],
                  ),
                ),
              ),
            ),
            //My Test Results
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(TestResult.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.biotech_rounded,
                        size: 80,
                      ),
                      Text('My Test Result')
                    ],
                  ),
                ),
              ),
            ),
            //Notifications
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(Announcement.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.announcement_rounded,
                        size: 80,
                      ),
                      Text('Announcement')
                    ],
                  ),
                ),
              ),
            ),
            //Self Claim
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(SelfClaim.routeName);

                },
                splashColor: Colors.lightGreen,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.admin_panel_settings_rounded,
                        size: 80,
                      ),
                      Text('Self Claim')
                    ],
                  ),
                ),
              ),
            ),
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
                        Icons.qr_code_rounded,
                        size: 80,
                      ),
                      Text('QR Code')
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
