import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/landing_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';
import 'package:tugas2_2009106059_muhammad_nizar/news.dart';
import 'package:tugas2_2009106059_muhammad_nizar/profile.dart';
import 'package:tugas2_2009106059_muhammad_nizar/info_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/notification.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _index = 0;
  static final List<Widget> _pages = [
    // bisa di ganti widget apapun
    const InfoProfile(),
    const NewsProfile(),
    const NotifProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SukoLab"),
        backgroundColor: const Color(0xFFEA4D58),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFFFDFE6),
        child: ListView(
          children: [
            Container(
              height: 100.0,
              child: const DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFEA4D58)),
                child: Text(
                  "SukoLab",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEA4D58),
                ),
              ),
              leading: const Icon(
                Icons.people_alt_rounded,
                color: Color(0xFFEA4D58),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: const Text(
                "Back To Landing Page",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEA4D58),
                ),
              ),
              leading: const Icon(
                Icons.door_back_door_outlined,
                color: Color(0xFFEA4D58),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/first');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFDFE6),
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        selectedIconTheme: const IconThemeData(color: Color(0xFFFEBDCB)),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_rate_sharp,
                color: Color(0xFFEA4D58),
              ),
              label: "Events"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper_rounded,
                color: Color(0xFFEA4D58),
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                color: Color(0xFFEA4D58),
              ),
              label: "Notifications"),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
