// This file is generated automatically, do not modify

// ignore_for_file: avoid_redundant_argument_values

import 'dart:ui';

import 'package:json_intl/json_intl.dart';
import 'package:json_intl/json_intl_data.dart';

const jsonIntlDelegate = JsonIntlDelegateBuiltin(
  data: dataIntlKeys,
  defaultLocale: defaultLocaleIntlKeys,
);

/// Internationalization constants
mixin IntlKeys {
  /// en: 'Date'
  /// hy: *** NOT TRANSLATED ***
  /// ru: *** NOT TRANSLATED ***
  static const date = #date;

  /// en: 'Enter pin code'
  /// hy: *** NOT TRANSLATED ***
  /// ru: *** NOT TRANSLATED ***
  static const enterpincode = #enterPinCode;

  /// en: 'Storage'
  /// hy: *** NOT TRANSLATED ***
  /// ru: *** NOT TRANSLATED ***
  static const storage = #storage;
}

/// Default Locale
const defaultLocaleIntlKeys = 'en';

/// Available Locales
const availableLocalesIntlKeys = [
  'en',
  'hy',
  'ru',
];

/// Supported Locales
const supportedLocalesIntlKeys = [
  Locale('en'),
  Locale('hy'),
  Locale('ru'),
];

/// Data converted from json strings
const dataIntlKeys = {
  'en': {
    IntlKeys.enterpincode: JsonIntlValue({
      JsonIntlGender.neutral: {
        JsonIntlPlural.other: 'Enter pin code',
      },
    }),
    IntlKeys.storage: JsonIntlValue({
      JsonIntlGender.neutral: {
        JsonIntlPlural.other: 'Storage',
      },
    }),
    IntlKeys.date: JsonIntlValue({
      JsonIntlGender.neutral: {
        JsonIntlPlural.other: 'Date',
      },
    }),
  },
  'hy': {},
  'ru': {},
};
