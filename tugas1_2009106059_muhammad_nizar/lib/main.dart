import 'package:flutter/material.dart';
import 'package:tugas1_2009106059_muhammad_nizar/landing_page.dart';
import 'package:tugas1_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas1_2009106059_muhammad_nizar/profile.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) =>  const Landing1(),
        '/second': (context) => const MyHome(),
        '/profile':(context) => const Profile(),
      },
    );
  }
}