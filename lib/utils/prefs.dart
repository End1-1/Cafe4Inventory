import 'package:shared_preferences/shared_preferences.dart';

extension Prefs on SharedPreferences {
  String serverName() {
    return getString(pkServerName) ?? '195.191.155.164';
  }

  String locale() {
    return getString(pkLocale) ?? 'hy';
  }

  String fbDb() {
    return string(pkWorkingDb);
  }

  String string(String key) {
    return getString(key) ?? '';
  }
}

late final SharedPreferences prefs;

const pkServerName = 'pkServerName';
const pkServerPort = 'pkServerPort';
const pkServerUsername = 'pkServerUsername';
const pkServerPassword = 'pkServerPassword';
const pkLocale = 'pkLocale';
const pkConfig = 'pkConfig';
const pkWorkingDb = 'pkWorkingDb';