import 'package:flutter/material.dart';
import 'package:tugas2_2009106059_muhammad_nizar/home_page.dart';
import 'package:tugas2_2009106059_muhammad_nizar/main.dart';

class InfoDetail1 extends StatelessWidget {
  const InfoDetail1({ Key? key,
  required this.isi,
  required this.gambar1}) : super(key: key);

  final String isi;
  final String gambar1;

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
                        SizeContainer(gambar: gambar1),
                        Container(
                          margin: const EdgeInsets.only(left: 10,bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            isi,
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