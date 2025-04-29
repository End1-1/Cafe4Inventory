import 'dart:async';
import 'dart:convert';

import 'package:cafe4_inventory/utils/app_websocket.dart';
import 'package:cafe4_inventory/utils/http_query.dart';

class DlgIndexModel {
  StreamController streamController = StreamController();
  static final Map<int, dynamic> cache = {};

  Future<dynamic> request(int request, String filter) async {
    // if (cache.containsKey(request)) {
    //   streamController.add(cache[request]);
    //   return;
    // }
    AppWebSocket.instance.sendMessage(jsonEncode({'request': request, 'filter': filter}), (result) {
      if (result[HttpQuery.kStatus] != HttpQuery.hrOk) {
        streamController.add(result[HttpQuery.kData].toString());
        return;
      }
      cache[request] = result;
      streamController.add(result);
    });

  }
}