import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String LANGUAGE_CODE = 'languageCode';

// ignore: constant_identifier_names
const String HRVATSKI = 'hr';
// ignore: constant_identifier_names
const String ENGLISH = 'en';

Future<Locale> setLocale(String languageCode) async {
  // ignore: no_leading_underscores_for_local_identifiers
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  // ignore: no_leading_underscores_for_local_identifiers
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? HRVATSKI;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case HRVATSKI:
      return const Locale(HRVATSKI, 'HR');
    case ENGLISH:
      return const Locale(ENGLISH, 'EN');
    default:
      return const Locale(HRVATSKI, 'HR');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}
