import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Widget myGambar() {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      margin: const EdgeInsets.only(top: 80),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/hoyolab.png"),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Landing1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            //Justify content
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Align items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myGambar(),
            ],
          ),
        ],
      ),
    );
  }
}
