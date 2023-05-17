// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/responsiveIntpC/responsive_layout_intpc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../responsiveIntpC/desktop_body_intpc.dart';
import '../responsiveIntpC/mobile_body_intpc.dart';

class InterpretacijskiCentri extends StatefulWidget {
  const InterpretacijskiCentri({Key? key}) : super(key: key);

  @override
  _InterpretacijskiCentriState createState() => _InterpretacijskiCentriState();
}

class _InterpretacijskiCentriState extends State<InterpretacijskiCentri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).naslovIntpCentri,
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
      body: const ResponsiveLayoutIntpc(
        mobileBodyIntpc: MyMobileBodyIntpc(),
        desktopBodyIntpc: MyDesktopBodyIntpc(),
      ),
    );
  }
}
