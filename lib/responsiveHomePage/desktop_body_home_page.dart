import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/classes/language_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDesktopBodyHomePage extends StatelessWidget {
  const MyDesktopBodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red.shade900,
                    width: 1.5,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red[300],
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Image(
                        image: AssetImage("images/dva_frankopana.png"),
                        width: 250,
                        height: 200,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(8.0),
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
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: Text(
                          translation(context).homeFirst,
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
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red.shade900,
                    width: 1.5,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red[100],
                ),
                child: Column(
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: Text(
                          translation(context).homeSecond,
                          style: GoogleFonts.comicNeue(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Image(
                        image: AssetImage("images/frankopani_naslovna.png"),
                        width: 250,
                        height: 200,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red.shade900,
                    width: 1.5,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red[200],
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
                      child: Image(
                        image: AssetImage("images/natural.jpg"),
                        width: 250,
                        height: 200,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      padding: const EdgeInsets.all(8.0),
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
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: Text(
                          translation(context).homeThird,
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
            )
          ],
        ),
      ),
    );
  }
}
