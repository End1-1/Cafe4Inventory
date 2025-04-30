import 'dart:async';
import 'dart:convert';

import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/structs/struct_inv_item.dart';
import 'package:cafe4_inventory/structs/struct_storage.dart';
import 'package:cafe4_inventory/utils/app_websocket.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/cupertino.dart';

class InventoryDocModel extends AppModel {
  int docid = 0;
  StructStorage store = StructStorage(id: '2', name: 'Բար');
  final List<StructInvItem> items = [];
  final scrollController = ScrollController();
  final filterController = TextEditingController();
  final rowController = StreamController.broadcast();

  void filter(String s) {
    final List<StructInvItem> l = [];
    for (final bi in items) {
      if (bi.name.toLowerCase().contains(s.toLowerCase()) ||
          bi.name.toLowerCase().contains(s.toLowerCase())) {
        l.add(bi);
      }
    }
    controller.add(l);
  }

  void filterQR(String s) {
    final List<StructInvItem> l = [];
    StructInvItem i = items
        .firstWhere((element) => element.qr.split(';').contains(s), orElse: () {
      return StructInvItem(
          id: 0, goods_id: 0, name: '', qty: 0, tara: 0, qr: '');
    });
    if (i.id == 0) {
      return;
    }
    l.add(i);
    controller.add([i]);
  }

  StructInvItem? findItemByQR(String s) {
    StructInvItem i = items
        .firstWhere((element) => element.qr.split(';').any((e) => e.contains(s)), orElse: () {
      return StructInvItem(
          id: 0, goods_id: 0, name: '', qty: 0, tara: 0, qr: '');
    });
    if (i.id == 0) {
      return null;
    }
    final qrs = i.qr.split(';');
    for (final q in qrs) {
      if (q.contains(s)) {
        final qrst = q.split('=');
        if (qrst.length == 2) {
          return i.copyWith(tara: double.tryParse(qrst[1]) ?? 0);
        }
      }
    }
    return null;
  }

  StructInvItem itemOfId(StructInvItem item) {
    return items.firstWhere((element) => element.id == item.id);
  }

  Future<void> updateInvItem(StructInvItem si) async {
    final request = <String, dynamic>{"request": HttpQuery.rUpdateInvDocItem}
      ..addAll(si.toJson());
    AppWebSocket.instance.sendMessage(jsonEncode(request), (result) {
      if (result[HttpQuery.kStatus] != HttpQuery.hrOk) {
        return;
      }
      StructInvItem i = StructInvItem.fromJson(result[HttpQuery.kData]);
      StructInvItem? oldItem =
          items.firstWhere((element) => element.id == i.id);
      if (oldItem == null) {
        return;
      }
      int index = items.indexOf(oldItem);
      items[index] = i;
      controller.add(items);
      if (filterController.text.isNotEmpty) {
        filter(filterController.text);
      }
    });
  }

  @override
  void processData(dynamic data) {
    items.clear();
    for (final m in data) {
      StructInvItem si = StructInvItem.fromJson(m);
      items.add(si);
    }
    controller.add(items);
  }

  @override
  void refresh() {
    request(HttpQuery.rOpenInventoryDoc,
        {"docid": docid, 'workerDb': prefs.fbDb()});
  }
}
