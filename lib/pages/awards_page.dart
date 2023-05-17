import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../classes/language_constants.dart';

class AwardsPage extends StatelessWidget {
  const AwardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).rewardsCapsLock,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('images/vino.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('images/suvenit.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('images/torta.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('images/kisobran.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(30),
                  width: 290,
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: translation(context).zahvala),
                        maxLines: 10,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
