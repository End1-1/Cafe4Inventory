import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_as_storage.dart';
import 'package:cafe4_inventory/structs/struct_store_item.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';

class StoreItemsModel extends AppModel {
  StructAsStorage? store;
  String itemQr = '';
  final List<StructStoreItem> items = [];

  @override
  void refresh() {
    Map<String, dynamic> data = {};
    if (store != null) {
      data["store"] = store!.id.trim();
    }
    data['item'] = itemQr;
    data['workerDb'] = prefs.fbDb();
    request(HttpQuery.rGetStorageItems, data);
  }

  @override
  void processData(dynamic data) {
    items.clear();
    for (final m in data) {
      StructStoreItem si = StructStoreItem.fromJson(m);
      items.add(si);
    }
    controller.add(items);
  }

  double dataQty(List<StructStoreItem> ls) {
    double qty = 0;
    for (final e in ls) {
      qty += e.qty;
    }
    return qty;
  }

  void filter(String s) {
    final List<StructStoreItem> l = [];
    for (final bi in items) {
      if (bi.fcaption.toLowerCase().contains(s.toLowerCase()) || bi.fmtcode.toLowerCase().contains(s.toLowerCase())) {
        l.add(bi);
      }
    }
    controller.add(l);
  }
}