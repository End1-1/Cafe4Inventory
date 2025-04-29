import 'dart:convert';

import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpQuery {
  static const port = 10002;
  static const hrFail = 0;
  static const hrOk = 1;
  static const hrNetworkError = 2;
  static const hrUnauthorized = 3;
  static const hrUnknown = 4;
  static const kStatus = 'kStatus';
  static const kData = 'kData';

  static const rListCafe = 1;
  static const rListStore = 2;
  static const rGetBaseItems = 3;
  static const rAmtStorageList = 4;
  static const rAsStorageList = 5;
  static const rGetStorageItems = 6;
  static const rOpenInventoryDoc = 7;
  static const rUpdateInvDocItem = 8;
  static const rGetGoodsQrAndWeight = 9;
  static const rGetGoodsNames = 10;
  static const rSaveGoodsQrName = 11;
  static const rGetConfig = 12;
  static const rGetAragamash = 13;
  static const rGetAllTogether = 14;

  Future<Map<String, dynamic>> requestOld(Map<String, Object?> inData) async {
    Map<String, Object?> outData = {};
    inData['workerDb'] = prefs.fbDb();
    String strBody = jsonEncode(inData);
    if (kDebugMode) {
      print('request: $strBody');
    }
    try {
      var response = await http
          .post(Uri.https('office.jazzve.am/ws', '/Cafe4Inventory'),
          headers: {
            'Content-Type': 'application/json',
            'Content-Length': '${utf8.encode(strBody).length}'
          },
          body: utf8.encode(strBody))
          .timeout(const Duration(seconds: 25), onTimeout: () {
        return http.Response('Timeout', 408);
      });
      String strResponse = utf8.decode(response.bodyBytes);
      if (kDebugMode) {
        print('Row body $strResponse');
      }
      if (response.statusCode < 299) {
        try {
          outData = jsonDecode(strResponse);
        } catch (e) {
          outData[kStatus] = hrFail;
          outData[kData] = '${e.toString()} $strResponse';
        }
      } else {
        outData[kStatus] = hrFail;
        outData[kData] = strResponse;
      }
    } catch (e) {
      outData[kStatus] = hrNetworkError;
      outData[kData] = e.toString();
    }
    if (kDebugMode) {
      print('Output $outData');
    }
    return outData;
  }
}