import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_amt_storage.dart';
import 'package:cafe4_inventory/structs/struct_base_item.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';

class BaseItemsModel extends AppModel {

  final List<StructBaseItem> items = [];
  StructAmtStorage? store;
  String itemQr = '';

  void filter (String s) {
    final List<StructBaseItem> l = [];
    for (final bi in items) {
      if (bi.fcaption.toLowerCase().contains(s.toLowerCase()) || bi.finvnumcode.toLowerCase().contains(s.toLowerCase())) {
        l.add(bi);
      }
    }
    controller.add(l);
  }

  double dataQty(List<StructBaseItem> li) {
    double qty = 0;
    for (final e in li) {
      qty += e.qty();
    }
    return qty;
  }

  @override
  Future<void> init() async{

  }

  @override
  void processData(dynamic data) {
    items.clear();
    for (final m in data) {
      StructBaseItem si = StructBaseItem.fromJson(m);
      items.add(si);
    }
    controller.add(items);
  }

  @override
  void refresh() {
    if (store == null && itemQr.isEmpty) {
      return;
    }
    request(HttpQuery.rGetBaseItems, {'workerDb': prefs.fbDb(), 'store': store == null ? '' : store!.id.trim(), 'item': itemQr});
  }
}