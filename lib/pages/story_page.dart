// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/responsive/desktop_body.dart';
import 'package:flutter_localization_v2/responsive/mobile_body.dart';
import 'package:flutter_localization_v2/responsive/responsive_layout.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../custom_bottom_nav_bar/btm_nav_bar.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).storyPage,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: const ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
      // ignore: unnecessary_const
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
