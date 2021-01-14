import 'package:covid_stop/function/announcement.dart';
import 'package:covid_stop/function/my_status.dart';
import 'package:covid_stop/function/my_test_result.dart';
import 'package:covid_stop/function/qr_code.dart';
import 'package:covid_stop/function/self_claim.dart';
import 'package:covid_stop/function/setting.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login/login.dart';
import 'login/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID STOP',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Login(),

      routes: {
        Login.routeName: (ctx)=>Login(),
        Signup.routeName: (ctx)=>Signup(),
        Home.routeName: (ctx)=>Home(),
        Announcement.routeName: (ctx)=>Announcement(),
        MyStatus.routeName: (ctx)=>MyStatus(),
        TestResult.routeName: (ctx)=>TestResult(),
        QRCode.routeName: (ctx)=>QRCode(),
        SelfClaim.routeName: (ctx)=>SelfClaim(),
        Setting.routeName: (ctx)=>Setting(),

      }
    );
  }
}
