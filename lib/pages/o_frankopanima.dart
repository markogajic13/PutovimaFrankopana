// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/responsiveAbout/desktop_body_about.dart';
import 'package:flutter_localization_v2/responsiveAbout/mobile_body_about.dart';
import 'package:flutter_localization_v2/responsiveAbout/responsive_layout_about.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';

class OFrankopanima extends StatefulWidget {
  const OFrankopanima({Key? key}) : super(key: key);

  @override
  _OFrankopanimaState createState() => _OFrankopanimaState();
}

class _OFrankopanimaState extends State<OFrankopanima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).naslovOFrankopanima,
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
      body: const ResponsiveLayoutAbout(
        mobileBodyAbout: MyMobileBodyAbout(),
        desktopBodyAbout: MyDesktopBodyAbout(),
      ),
    );
  }
}
