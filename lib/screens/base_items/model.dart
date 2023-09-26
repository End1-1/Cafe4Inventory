import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_amt_storage.dart';
import 'package:cafe4_inventory/structs/struct_base_item.dart';
import 'package:cafe4_inventory/utils/http_query.dart';

class BaseItemsModel extends AppModel {

  final List<StructBaseItem> items = [];
  StructAmtStorage? store;

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
    HttpQuery().request({"request": HttpQuery.rAmtStorageList}).then((value) {
      if (value[HttpQuery.kStatus] != HttpQuery.hrOk) {
        return;
      }
      for (final e in value[HttpQuery.kData]) {

      }
    });
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
    if (store == null) {
      return;
    }
    request(HttpQuery.rGetBaseItems, {'store': store!.id.trim()});
  }
}