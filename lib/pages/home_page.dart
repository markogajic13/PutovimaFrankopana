// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/responsiveHomePage/desktop_body_home_page.dart';
import 'package:flutter_localization_v2/responsiveHomePage/mobile_body_home_page.dart';
import 'package:flutter_localization_v2/responsiveHomePage/responsive_layout_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../custom_bottom_nav_bar/btm_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).homePage,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: const ResponsiveLayoutHomePage(
        mobileBodyHomePage: MyMobileBodyHomePage(),
        desktopBodyHomePage: MyDesktopBodyHomePage(),
      ),
      // ignore: unnecessary_const
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
