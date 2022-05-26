// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/eventdetail1.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';
import 'package:tugas2_2009106059_muhammad_nizar/news.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFDFE6),
        body: ListView(
          children: [
            MyJudul(judul: "Event InGame"),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Info(judul: "Spices From the West", 
                  gambars: "assets/images/event3.jpeg", 
                  page: InfoDetail1(isi: "The new event 'Spices From the West' is about to begin!\nA certain lady from Sumeru has come all this way to Liyue to conduct a certain brand of research. Help her complete this research, and fine rewards shall be yours...\n\nEvent Duration\n2022/05/14 10:00 — 2022/06/07 03:59 (Server Time)", 
                  gambar1: "assets/images/event3.jpeg")),
                  Info(judul: "LeyLine Overflow", 
                  gambars: "assets/images/event1.jpg",
                  page: InfoDetail1(isi: "'Ley Line Overflow' Event - Double Drops From Blossoms of Wealth and Blossoms of Revelation!\n\nDuring the event, Travelers who successfully challenge a Blossom of Wealth or Blossom of Revelation and who consume Original Resin to obtain rewards will receive double the output. A total of 3 such bonuses will be available each day!\n\nEvent Duration\n2022/04/28 04:00:00 - 2022/05/05 03:59:59 (Server Time)",
                  gambar1: "assets/images/event1.jpg",)),
                  Info(judul: "Vibro-Crystal Research", 
                  gambars: "assets/images/event2.jpg",
                  page: InfoDetail1(isi: "'Vibro-Crystal Research' Event: Vibro-Crystals Connection Challenge\n\nDuring the event, help the Fontaine researcher who has come to Liyue to study the harmonic motion between gems known as Vibro-Crystals. Complete the challenge to obtain rewards such as Primogems, Hero's Wit, Weapon Ascension Materials, Mystic Enhancement Ore, and Mora.\n\nEvent Duration\n2022/04/21 10:00:00 – 2022/05/05 03:59:59 (Server Time)",
                  gambar1: "assets/images/event2.jpg",)),
                ],
              ),
            ),
          ],
        ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({Key? key,
  required this.judul,
  required this.gambars,
  required this.page}) : super(key: key);

  final String judul;
  final String gambars;
  final page;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => page,
              ),
            );
          },
          child: Container(
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
                SizeContainer(gambar: gambars),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    judul,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFEA4D58),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
      ),
    );
  }
}


class SizeContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SizeContainer({Key? key, required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
