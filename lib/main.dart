import 'dart:io';

import 'package:cafe4_inventory/screens/docs/screen.dart';
import 'package:cafe4_inventory/utils/http_overrides.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  final config = await HttpQuery().request(
      {'request': HttpQuery.rGetConfig, 'config': prefs.string(pkConfig)});
  if (config[HttpQuery.kStatus] == HttpQuery.hrOk) {
    for (final m in config[HttpQuery.kData]) {
      (m as Map).forEach((key, value) {
        prefs.setString(key, value);
      });
    }
  }
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
    );
  }
}
