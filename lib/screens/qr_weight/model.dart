import 'dart:async';

import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_qr_weight.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';

class QrWeightModel extends AppModel {

  final List<StructQrWeight> items = [];
  final qrController = StreamController.broadcast();

  void filter(String s) {}

  void getInfoByQr(String qr) {
    // qrController.add(null);
    // HttpQuery().request({'request': HttpQuery.rGetGoodsQrAndWeight, 'qr': qr, 'workerDb': prefs.fbDb()}).then((value) {
    //   if (value[HttpQuery.kStatus] != HttpQuery.hrOk) {
    //     qrController.add(HttpError(value[HttpQuery.kData]));
    //     return;
    //   }
    //   if (value['found'] == 1) {
    //     qrController.add(StructQrWeight.fromJson(value[HttpQuery.kData][0]));
    //     return;
    //   }
    //   qrController.add(StructQrWeight(id: 0, goods_id: 0, name: '', qr: qr, qty: 0, comment: ''));
    // });
  }

  @override
  void refresh() {
    request(HttpQuery.rGetGoodsQrAndWeight, {'workerDb': prefs.fbDb()});
  }

  @override
  void processData(dynamic data) {
    items.clear();
    for (final m in data) {
      StructQrWeight si = StructQrWeight.fromJson(m);
      items.add(si);
    }
    controller.add(items);
  }

}