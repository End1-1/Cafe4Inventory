import 'dart:async';

import 'package:cafe4_inventory/utils/http_query.dart';

class HttpLoading {

}

class HttpError {
  final String error;
  HttpError(this.error);
}

class HttpData {
  final dynamic data;
  HttpData(this.data);
}

class AppModel {
  final controller = StreamController();

  Future<void> init() async {

  }

  void refresh() {

  }

  void processData(dynamic data) {
    controller.add(data);
  }

  Future<dynamic?> request(int request, Map<String, dynamic> data) async {
    controller.add(HttpLoading());
    final result = await HttpQuery().request({'request': request}..addAll(data));
    if (result[HttpQuery.kStatus] != HttpQuery.hrOk) {
      controller.add(HttpError(result[HttpQuery.kData].toString()));
      return;
    }
    processData(HttpData(result[HttpQuery.kData]).data);
  }
}