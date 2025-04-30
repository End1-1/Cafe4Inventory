import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension Prefs on SharedPreferences {
  static final mdDoubleFormatter = NumberFormat.decimalPattern('en_us');

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

  String mdFormatDouble(num? value) {
    if (value == null) return '0';
    final str = mdDoubleFormatter.format(value);


    final parts = str.split('.');

    if (parts.length == 2) {
      if (RegExp(r'^0+$').hasMatch(parts[1])) {
        return parts[0];
      } else {
        final fractional = parts[1].replaceFirst(RegExp(r'0+$'), '');
        return '${parts[0]}.$fractional';
      }
    }

    return str;
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