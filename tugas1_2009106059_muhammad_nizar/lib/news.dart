import 'package:flutter/material.dart';
import 'package:tugas1_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas1_2009106059_muhammad_nizar/main.dart';

class NewsProfile extends StatelessWidget {
  const NewsProfile({Key? key}) : super(key: key);

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
                        SizeContainer(gambar: "assets/images/bannerchar1.jpg"),
                        Container(
                          margin: const EdgeInsets.only(left: 10,bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Travelers, stock up on weapons and characters in the event wish to make your party stronger in combat!\n\nDuring this event wish, the event-exclusive 5-star character 'Frostflake Heron' Kamisato Ayaka (Cryo) will receive a huge drop-rate boost!\n\nEvent Wish Duration\n2022/04/19 18:00:00 - 2022/05/10 14:59:59",
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
                        SizeContainer(gambar: "assets/images/bannersen1.jpg"),
                        Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Travelers, stock up on weapons and characters in 'Epitome Invocation' to make your party stronger in combat!\n\nDuring the event, the event-exclusive 5-star weapons Mistsplitter Reforged (Sword) and The Unforged (Claymore) will receive a huge drop-rate boost!\n\nEvent Wish Duration\n2022/04/19 18:00:00 - 2022/05/10 14:59:59",
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
                        SizeContainer(gambar: "assets/images/specialann1.jpg"),
                        Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Dear Travelers,\n\nIt's announcement time! The special program for Genshin Impact's new version will premiere on the official Twitch channel on 03/18/2022 at 08:00 AM (UTC-4)!",
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