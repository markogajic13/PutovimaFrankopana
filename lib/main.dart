import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/classes/language_constants.dart';
import 'package:flutter_localization_v2/pages/home_page.dart';
import 'package:flutter_localization_v2/pages/login_page.dart';
import 'package:flutter_localization_v2/pages/quiz_page.dart';
import 'package:flutter_localization_v2/pages/story_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => setLocale(locale));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/homePage': (context) => const HomePage(),
        '/storyPage': (context) => const StoryPage(),
        '/quizPage': (context) => const QuizPage(),
      },
    );
  }
}
