// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/eventdetail1.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';

class NewsProfile extends StatelessWidget {
  const NewsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFDFE6),
        body: ListView(
          children: [
            MyJudul(judul: "Banner Information"),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  News(teks: "'Frostflake Heron'\nKamisato Ayaka (Cryo)", 
                  gambara: "assets/images/bannerchar1.jpg",
                  halaman: InfoDetail1(isi: "Travelers, stock up on weapons and characters in the event wish to make your party stronger in combat!\n\nDuring this event wish, the event-exclusive 5-star character 'Frostflake Heron' Kamisato Ayaka (Cryo) will receive a huge drop-rate boost!\n\nEvent Wish Duration\n2022/04/19 18:00:00 - 2022/05/10 14:59:59",
                  gambar1: "assets/images/bannerchar1.jpg")),
                  News(teks: "'Epitome Invocation' Event",
                  gambara: "assets/images/bannersen1.jpg",
                  halaman: InfoDetail1(isi: "Travelers, stock up on weapons and characters in 'Epitome Invocation' to make your party stronger in combat!\n\nDuring the event, the event-exclusive 5-star weapons Mistsplitter Reforged (Sword) and The Unforged (Claymore) will receive a huge drop-rate boost!\n\nEvent Wish Duration\n2022/04/19 18:00:00 - 2022/05/10 14:59:59",
                  gambar1: "assets/images/bannersen1.jpg",)),
                ],
              ),
            ),
            MyJudul(judul: "Update Information"),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  News(teks: "LiveStream Update \nGenshinImpact 2.7", 
                  gambara: "assets/images/specialann2.jpg",
                   halaman: InfoDetail1(isi: "Dear Travelers,\n\nThe special program for GenshinImpact's new version will be on the official Twitch 20/05/2022 at 8AM (UTC-4)!\nAlso on the official YouTube channel 20/05/2022 at 12PM (UTC-4)", 
                   gambar1: "assets/images/specialann2.jpg")),
                  News(teks: "LiveStream Update \nGenshinImpact 2.6", 
                  gambara: "assets/images/specialann1.jpg",
                   halaman: InfoDetail1(isi: "Dear Travelers,\n\nIt's announcement time! The special program for Genshin Impact's new version will premiere on the official Twitch channel on 03/18/2022 at 08:00 AM (UTC-4)!",
                   gambar1: "assets/images/specialann1.jpg")),
                ],
              ),
            ),
          ],
        ),
    );
  }
}

class News extends StatelessWidget {
  const News({Key? key, 
  required this.teks, 
  required this.gambara,
  required this.halaman}) : super(key: key);

  final String teks;
  final String gambara;
  final halaman;
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
                builder: (_) => halaman,
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
                SizeContainer(gambar: gambara),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    teks,
                    style: const TextStyle(
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
  const SizeContainer({Key? key,  required this.gambar});

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

class MyJudul extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyJudul({Key? key,  required this.judul});

  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 30),
      child: Text(
        judul,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFFEA4D58),
        ),
      ),
    );
  }
}