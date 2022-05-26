import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';

class Landing1 extends StatelessWidget {
  const Landing1({Key? key}) : super(key: key);
  Widget myJudulGambar() {
    return Container(
      width: 300,
      height: 250,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/yae1.png"),
        ),
      ),
    );
  }

  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFEA4D58),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "SukoLab",
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

  Widget myParagraf() {
    return Container(
      width: 320,
      height: 190,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, top: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFFEBDCB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Penjelasan sedikit, ini adalah versi simple dari aplikasi HoyoLab. \n-Muhammad Nizar 2009106059",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Lato',
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
          Column(
            //Justify content
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Align items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myJudul(),
              myJudulGambar(),
              myParagraf(),
            ],
          ),
          const MyButton(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 55,
      margin: const EdgeInsets.only(top: 10, bottom: 30, left: 40, right: 40),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                'Login Successfully!',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              action: SnackBarAction(
                label: 'BACK?',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/first');
                },
              ),
              duration: const Duration(milliseconds: 1500),
              width: 280.0, // Width of the SnackBar.
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0, // Inner padding for SnackBar content.
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          );
        },
        child: const Text(
          "Home",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Caveat',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFEA4D58),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          minimumSize: const Size(200, 100),
        ),
      ),
    );
  }
}
