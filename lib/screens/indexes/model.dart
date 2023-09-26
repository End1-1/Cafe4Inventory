import 'dart:async';

import 'package:cafe4_inventory/utils/http_query.dart';

class DlgIndexModel {
  StreamController streamController = StreamController();

  Future<dynamic> request(int request) async {
    final result = await HttpQuery().request({'request': request});
    if (result[HttpQuery.kStatus] != HttpQuery.hrOk) {
      streamController.add(result[HttpQuery.kData].toString());
      return;
    }
    streamController.add(result);
  }
}