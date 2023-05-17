// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../responsivePKU/desktop_body_pku.dart';
import '../responsivePKU/mobile_body_pku.dart';
import '../responsivePKU/responsive_layout_pku.dart';

class PovijestKulturaUmjetnost extends StatefulWidget {
  const PovijestKulturaUmjetnost({Key? key}) : super(key: key);

  @override
  _PovijestKulturaUmjetnostState createState() =>
      _PovijestKulturaUmjetnostState();
}

class _PovijestKulturaUmjetnostState extends State<PovijestKulturaUmjetnost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).naslovKPU,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: const ResponsiveLayoutPKU(
        mobileBodyPKU: MyMobileBodyPKU(),
        desktopBodyPKU: MyDesktopBodyPKU(),
      ),
    );
  }
}
