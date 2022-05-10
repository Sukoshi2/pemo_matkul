import 'package:flutter/material.dart';
import 'package:tugas1_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas1_2009106059_muhammad_nizar/main.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);
  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Ikan",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Caveat',
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFDFE6),
      body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                        color: const Color(0xFFEA4D58),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizeContainer(gambar: "assets/images/event1.jpg"),
                        Container(
                          margin: const EdgeInsets.only(left: 10,bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "'Ley Line Overflow' Event - Double Drops From Blossoms of Wealth and Blossoms of Revelation!\n\nDuring the event, Travelers who successfully challenge a Blossom of Wealth or Blossom of Revelation and who consume Original Resin to obtain rewards will receive double the output. A total of 3 such bonuses will be available each day!\n\nEvent Duration\n2022/04/28 04:00:00 - 2022/05/05 03:59:59",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFFEA4D58),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                        color: const Color(0xFFEA4D58),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizeContainer(gambar: "assets/images/event2.jpg"),
                        Container(
                          margin: const EdgeInsets.only(left: 10,bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "'Vibro-Crystal Research' Event: Vibro-Crystals Connection Challenge\n\nDuring the event, help the Fontaine researcher who has come to Liyue to study the harmonic motion between gems known as Vibro-Crystals. Complete the challenge to obtain rewards such as Primogems, Hero's Wit, Weapon Ascension Materials, Mystic Enhancement Ore, and Mora.\n\nEvent Duration\n2022/04/21 10:00:00 – 2022/05/05 03:59:59",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFFEA4D58),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class SizeContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SizeContainer({Key? key,  required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 250,
      margin: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(gambar),
          ),
      ),
    );
  }
}