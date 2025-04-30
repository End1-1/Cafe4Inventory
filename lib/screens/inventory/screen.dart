import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/barcode/barcode_reader.dart';
import 'package:cafe4_inventory/screens/dlg_qty/dlg_qty.dart';
import 'package:cafe4_inventory/screens/inventory/model.dart';
import 'package:cafe4_inventory/structs/struct_inv_item.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InventoryDocScreen extends AppScreen {
  static final d1 = BoxDecoration(color: Colors.black12);
  static final d2 = BoxDecoration(color: Colors.white);
  static final ts = TextStyle(fontSize: 18);

  InventoryDocScreen(int docid, {super.key})
      : super(model: InventoryDocModel()) {
    (model as InventoryDocModel).docid = docid;
  }

  @override
  Widget body(BuildContext context) {
    model.refresh();
    return StreamBuilder(
        stream: model.controller.stream,
        builder: (builder, snapshot) {
          if (snapshot.data == null || snapshot.data is HttpLoading) {
            return httpLoading(context);
          }
          if (snapshot.data is HttpError) {
            return httpError(context, snapshot.data.error);
          }
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(
                      child: TextFormField(
                    controller: (model as InventoryDocModel).filterController,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: const EdgeInsets.all(3),
                          width: 10,
                          height: 10,
                          child: Image.asset('assets/icons/search.png')),
                    ),
                    onChanged: (s) {
                      (model as InventoryDocModel).filter(s);
                    },
                  )),
                  IconButton(
                      onPressed: () {
                          (model as InventoryDocModel).filterController.clear();
          (model as InventoryDocModel).filter('');},
                      icon: Icon(Icons.clear))
                ]),
                Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                            width: 510,
                            child: ListView.builder(
                                controller: (model as InventoryDocModel)
                                    .scrollController,
                                itemCount: snapshot.data.length,
                                shrinkWrap: true,
                                itemBuilder: (itemBuilder, index) {
                                  final si = snapshot.data[index];

                                  return Container(
                                      decoration: index % 2 == 0 ? d1 : d2,
                                      child: StreamBuilder(
                                          stream: (model as InventoryDocModel)
                                              .rowController
                                              .stream,
                                          builder: (builder, snapshot) {
                                            return itemRow(context, si);
                                          }));
                                })))),
                barcodeRow(context),
              ]);
        });
  }

  Widget itemRow(BuildContext context, dynamic si) {
    return InkWell(
        onTap: () {
          _updateItem(context, si, 0);
        },
        child: Row(
          children: [
            Container(
                width: 300,
                margin: const EdgeInsets.all(5),
                child: Text(
                  si.name,
                  style: ts,
                )),
            Container(
                width: 60,
                margin: const EdgeInsets.all(5),
                child: Text(prefs.mdFormatDouble(si.qty), style: ts)),
            Container(
                width: 60,
                margin: const EdgeInsets.all(5),
                child: Text('${si.tara}', style: ts))
          ],
        ));
  }

  Widget barcodeRow(BuildContext context) {
    return Row(children: [
      Expanded(child: Container()),
      InkWell(
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => BarcodeScannerWithOverlay()))
                .then((value) {
              if (kDebugMode) {
                StructInvItem? item =
                    (model as InventoryDocModel).findItemByQR('5010314049300');
                if (item == null) {
                  return;
                }
                _updateItem(context,
                    (model as InventoryDocModel).itemOfId(item), item.tara);
                (model as InventoryDocModel).filter(item.name);
                (model as InventoryDocModel).filterController.text = item.name;
                return;
              }
              if (value == null) {
                return;
              }
              StructInvItem? item =
                  (model as InventoryDocModel).findItemByQR(value);
              if (item == null) {
                return;
              }
              _updateItem(context, (model as InventoryDocModel).itemOfId(item),
                  item.tara);
              (model as InventoryDocModel).filter(item.name);
              (model as InventoryDocModel).filterController.text = item.name;
            });
          },
          child: Container(
              margin: const EdgeInsets.all(3),
              child: Image.asset(
                'assets/icons/qr.png',
                height: 30,
              ))),
      const SizedBox(width: 10)
    ]);
  }

  @override
  List<Widget> header(BuildContext context) {
    return [
      InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset('assets/icons/back.png', height: 40)),
      Expanded(child: Container()),
      Text((model as InventoryDocModel).store.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      Expanded(child: Container()),
    ];
  }

  _updateItem(BuildContext context, StructInvItem s, double tara) async {
    DlgQty.getQty(
            context, s.name, tara > 0.001 ? prefs.mdFormatDouble(tara) : '')
        .then((value) {
      if (value == null) {
        return;
      }
      if (value > 1000000) {
        value -= 1000000;
        value += s.qty;
      }
      if (tara > 0.001) {
        value -= tara;
      }
      (model as InventoryDocModel).updateInvItem(s.copyWith(qty: value));
    });
  }
}
