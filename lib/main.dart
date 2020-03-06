import 'package:firebase_user_auth/register_page.dart';
import 'package:firebase_user_auth/splash_page.dart';
import 'package:firebase_user_auth/task.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home.dart';
import 'login_page.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/task': (BuildContext context) => TaskPage(title: 'Task'),
        '/home': (BuildContext context) => HomePage(title: 'Home'),
        '/login': (BuildContext context) => LoginPage(),
        '/register': (BuildContext context) => RegisterPage(),
      });
  }
}