import 'package:flutter/material.dart';
import 'package:rgit/screens/dept1.dart';
import 'package:rgit/screens/dept2.dart';
import 'package:rgit/screens/dept3.dart';
import 'package:rgit/screens/loginpage.dart';
import 'package:rgit/screens/adminuser.dart';
import 'package:rgit/screens/mainadmin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/':(context)=>loginpage(),
        '/adminuser':(context)=>adminuser(),
        '/mainadmin':(context)=>mainadmin(),
        '/dept1':(context)=>dept1(),
        '/dept2':(context)=>dept2(),
        '/dept3':(context)=>dept3(),
      },
      onGenerateRoute: null,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: adminuser(),
    );
  }


