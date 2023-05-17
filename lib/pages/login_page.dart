// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/classes/language.dart';
import 'package:flutter_localization_v2/classes/language_constants.dart';
import 'package:flutter_localization_v2/main.dart';
import 'package:flutter_localization_v2/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          title: Text(
            translation(context).title,
            style: GoogleFonts.audiowide(
              color: Colors.white,
              fontStyle: FontStyle.normal,
            ),
          ),
          titlePadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        ),
        backgroundColor: Colors.redAccent[700],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode);
                  MyApp.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: _mainForm(context),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/frankopani-logo.png',
                width: 400,
                height: 150,
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: Center(
                child: Text(
                  translation(context).login,
                  style: GoogleFonts.audiowide(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelStyle: const TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                labelText: translation(context).name,
                hintStyle: const TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                hintText: translation(context).hintName,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelStyle: const TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                labelText: translation(context).password,
                hintStyle: const TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                hintText: translation(context).hintPassword,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage();
                  }),
                );
              },
              height: 55,
              shape: const StadiumBorder(),
              color: Colors.redAccent[700],
              child: Center(
                child: Text(
                  translation(context).loginButton,
                  style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
