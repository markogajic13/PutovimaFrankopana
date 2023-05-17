// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../pages/interpretacijski_centri.dart';
import '../pages/o_frankopanima.dart';
import '../pages/piktogrami.dart';
import '../pages/povijest_kultura_umjetnost.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1.5,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.redAccent[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 20, 20, 20),
                                    child: Image(
                                      image: AssetImage("images/main.png"),
                                      width: 280,
                                      height: 250,
                                      fit: BoxFit.fill,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20,
                                          top: 20,
                                          right: 20,
                                          bottom: 15),
                                      child: Text(
                                        translation(context).aboutStories,
                                        style: GoogleFonts.comicNeue(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        } else if (index == 1) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  // ignore: avoid_unnecessary_containers
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, top: 8, right: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OFrankopanima()),
                                        );
                                      },
                                      child: Text(
                                        translation(context).oFrankopanima,
                                        style: GoogleFonts.comicNeue(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Image(
                                    image:
                                        AssetImage("images/o_frankopanima.jpg"),
                                    width: 280,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1.5,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red[200],
                              ),
                              height: 400,
                            ),
                          );
                        } else if (index == 2) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  // ignore: avoid_unnecessary_containers
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, top: 8, right: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const InterpretacijskiCentri()),
                                        );
                                      },
                                      child: Text(
                                        translation(context)
                                            .interpretacijskiCentri,
                                        style: GoogleFonts.comicNeue(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Image(
                                    image: AssetImage("images/intp_centri.jpg"),
                                    width: 280,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1.5,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red[100],
                              ),
                              height: 400,
                            ),
                          );
                        } else if (index == 3) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  // ignore: avoid_unnecessary_containers
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, top: 8, right: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PovijestKulturaUmjetnost()),
                                        );
                                      },
                                      child: Text(
                                        translation(context).pku,
                                        style: GoogleFonts.comicNeue(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Image(
                                    image: AssetImage("images/pov_kul_umj.jpg"),
                                    width: 280,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1.5,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red[200],
                              ),
                              height: 400,
                            ),
                          );
                        } else if (index == 4) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  // ignore: avoid_unnecessary_containers
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, top: 8, right: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const RutePiktogrami()),
                                        );
                                      },
                                      child: Text(
                                        translation(context).rutePiktogrami,
                                        style: GoogleFonts.comicNeue(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Image(
                                    image: AssetImage(
                                        "images/rute_piktogrami.png"),
                                    width: 280,
                                    height: 250,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1.5,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red[100],
                              ),
                              height: 400,
                            ),
                          );
                        }
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
