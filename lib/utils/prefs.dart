import 'package:shared_preferences/shared_preferences.dart';

extension Prefs on SharedPreferences {
  String serverName() {
    return getString(pkServerName) ?? '';
  }

  String locale() {
    return getString(pkLocale) ?? 'hy';
  }
}

late final SharedPreferences prefs;

const pkServerName = 'pkServerName';
const pkServerPort = 'pkServerPort';
const pkServerUsername = 'pkServerUsername';
const pkServerPassword = 'pkServerPassword';
const pkLocale = 'pkLocale';