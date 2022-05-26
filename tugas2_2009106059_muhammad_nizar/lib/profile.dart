import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color(0xFFEA4D58),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 235.0,
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/wpgenshin1.jpg")),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: const Color(0xFFEA4D58),
                    ),
                    // borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 60),
                        alignment: Alignment.center,
                        child: const Text(
                          "Sukoshi", // bisa panggil username
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFEA4D58),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 10, left: 105, right: 105),
                        alignment: Alignment.center,
                        child: const Text(
                          "UID: 802949158", // bisa panggil username
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFEA4D58),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFFEA4D58),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFEBDC8),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFFEA4D58),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 25,
                          right: 25,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Nickname \nKingIsekai\n\nGender\nMale\n\nSignature\nHello, World of Teyvat!!",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFEA4D58),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: const AssetImage("assets/images/lumine.jpg")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
