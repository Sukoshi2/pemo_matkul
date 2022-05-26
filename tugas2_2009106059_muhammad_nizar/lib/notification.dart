import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';

class NotifProfile extends StatelessWidget {
  const NotifProfile({Key? key}) : super(key: key);
  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFEA4D58),
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
              padding: const EdgeInsets.all(30),
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
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "System",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFEA4D58),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "The 'Hot Topics Challange' is on!",
                            style: TextStyle(
                              fontSize: 20,
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
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                        color: const Color(0xFF407301),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Replies",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF002A10),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "No comment recieved yet",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF002A10),
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
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                        color: const Color(0xFF76C9F3),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Likes",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15, bottom: 15),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "No Like recieved yet",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
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
        ));
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
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(gambar),
        ),
      ),
    );
  }
}
