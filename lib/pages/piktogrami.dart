// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../responsivePiktogrami/desktop_body_piktogrami.dart';
import '../responsivePiktogrami/mobile_body_piktogrami.dart';
import '../responsivePiktogrami/responsive_layout_piktogrami.dart';

class RutePiktogrami extends StatefulWidget {
  const RutePiktogrami({Key? key}) : super(key: key);

  @override
  _RutePiktogramiState createState() => _RutePiktogramiState();
}

class _RutePiktogramiState extends State<RutePiktogrami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).naslovRutePiktogrami,
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
      body: const ResponsiveLayoutPiktogrami(
        mobileBodyPiktogrami: MyMobileBodyPiktogrami(),
        desktopBodyPiktogrami: MyDesktopBodyPiktogrami(),
      ),
    );
  }
}
