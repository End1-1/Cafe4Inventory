import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_aragamash.dart';
import 'package:cafe4_inventory/structs/struct_store_item.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';

class AragamashModel extends AppModel {
  String itemQr = '';
  String store = '';
  final List<StructAragamash> items = [];

  @override
  void refresh() {
    Map<String, dynamic> data = {};
    if (store.isNotEmpty) {
      data["store"] = store.trim();
    }
    data['item'] = itemQr;
    data['workerDb'] = prefs.fbDb();
    request(HttpQuery.rGetAragamash, data);
  }

  @override
  void processData(dynamic data) {
    items.clear();
    for (final m in data) {
      StructAragamash si = StructAragamash.fromJson(m);
      items.add(si);
    }
    controller.add(items);
  }

  void filter(String s) {
    final List<StructAragamash> l = [];
    for (final bi in items) {
      if (bi.fcaption.toLowerCase().contains(s.toLowerCase()) || bi.fmtcode.toLowerCase().contains(s.toLowerCase())) {
        l.add(bi);
      }
    }
    controller.add(l);
  }

  double dataQty(List<StructAragamash> ls) {
    double qty = 0;
    for (final e in ls) {
      qty += e.qty;
    }
    return qty;
  }
}