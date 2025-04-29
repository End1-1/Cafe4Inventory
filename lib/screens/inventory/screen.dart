import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/dlg_qty/dlg_qty.dart';
import 'package:cafe4_inventory/screens/inventory/model.dart';
import 'package:cafe4_inventory/structs/struct_inv_item.dart';
import 'package:flutter/material.dart';

class InventoryDocScreen extends AppScreen {

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
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: const EdgeInsets.all(3),
                          width: 10,
                          height: 10,
                          child: Image.asset('assets/icons/search.png')),
                      suffixIcon: InkWell(onTap:(){
                        // Navigator.push(context, MaterialPageRoute(builder: (builder) => QRReader())).then((value) {
                        //   if (value == null) {
                        //     return;
                        //   }
                        //   (model as InventoryDocModel).filterQR(value.code);
                        // });
                      }, child: Container(
                          margin: const EdgeInsets.all(3),
                          width: 10,
                          height: 10,
                          child: Image.asset('assets/icons/qr.png')))),
                  onChanged: (s) {
                    (model as InventoryDocModel).filter(s);
                  },
                ),
                Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                            width: 510,
                            child: ListView.builder(
                              controller: (model as InventoryDocModel).scrollController,
                                itemCount: snapshot.data.length,
                                shrinkWrap: true,
                                itemBuilder: (itemBuilder, index) {
                                  final si = snapshot.data[index];
                                  const d1 =
                                      BoxDecoration(color: Colors.black12);
                                  const d2 = BoxDecoration(color: Colors.white);
                                  const ts = TextStyle(fontSize: 18);
                                  return Container(
                                      decoration: index % 2 == 0 ? d1 : d2,
                                      child: StreamBuilder(
                                          stream: (model as InventoryDocModel)
                                              .rowController
                                              .stream,
                                          builder: (builder, snapshot) {
                                            return InkWell(
                                                onTap: () {
                                                  _updateItem(context, si);
                                                },
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        width: 300,
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Text(
                                                          si.name,
                                                          style: ts,
                                                        )),
                                                    Container(
                                                        width: 60,
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Text('${si.qty}',
                                                            style: ts)),
                                                    Container(
                                                        width: 60,
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Text(
                                                            '${si.tara}',
                                                            style: ts))
                                                  ],
                                                ));
                                          }));
                                }))))
              ]);
        });
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

  _updateItem(BuildContext context, StructInvItem s) async {
    DlgQty.getQty(context, s.name).then((value) {
      if (value == null) {
        return;
      }
      (model as InventoryDocModel).updateInvItem(s.copyWith(qty: value - s.tara));
    });
  }
}
