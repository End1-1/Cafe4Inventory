import 'dart:io';

import 'package:cafe4_inventory/screens/docs/screen.dart';
import 'package:cafe4_inventory/utils/http_overrides.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:json_intl/json_intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DocsScreen(),
        locale: Locale(prefs.locale()),
        localizationsDelegates: const [
          JsonIntlDelegate(
            debug: false,
            // Set to true to display the translation keys
            availableLocales: [
              'en',
              'ru',
              'hy'
            ], // Not including the default language
          ),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: const [Locale('en'), Locale('ru'), Locale('hy')]
    );
  }
}

