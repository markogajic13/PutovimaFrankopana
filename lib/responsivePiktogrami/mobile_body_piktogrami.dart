import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../classes/language_constants.dart';

class MyMobileBodyPiktogrami extends StatelessWidget {
  const MyMobileBodyPiktogrami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 300,
                        height: 600,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.redAccent.shade700,
                            width: 1.5,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.redAccent[100],
                        ),
                        child: Container(
                          height: 500,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
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
                                  translation(context).piktogrami,
                                  style: GoogleFonts.comicNeue(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (index == 1) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 300,
                        height: 600,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red.shade900,
                            width: 1.5,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.redAccent[100],
                        ),
                        child: ListView(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktoa.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktob.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktoc.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktod.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktoe.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktof.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Image(
                                image: AssetImage("images/piktog.png"),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
