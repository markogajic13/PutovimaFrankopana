import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/classes/language_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDesktopBodyIntpc extends StatelessWidget {
  const MyDesktopBodyIntpc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: 1350,
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
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Image(
                        image: AssetImage("images/intp_centri.jpg"),
                        width: 700,
                        height: 250,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 20),
                        child: ListView(
                          children: <Widget>[
                            Text(
                              translation(context).sadrzajIntpCentri,
                              style: GoogleFonts.comicNeue(
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
