import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/indexes/dlg_index.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class StoreItemsScreen extends AppScreen {

  StoreItemsScreen({super.key, String itemQr = ''}) : super(model: StoreItemsModel()){
    (model as StoreItemsModel).itemQr = itemQr;
    model.refresh();
  }

  @override
  Widget body(BuildContext context) {
    return StreamBuilder(stream: model.controller.stream, builder: (builder, snapshot) {
      if (snapshot.data == null || snapshot.data is HttpLoading) {
        return httpLoading(context);
      }
      if (snapshot.data is HttpError) {
        return httpError(context, snapshot.data.error);
      }
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children:[
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Container(margin: const EdgeInsets.all(3), width: 10, height: 10, child: Image.asset('assets/icons/search.png'))
          ),
          onChanged: (s) {
            (model as StoreItemsModel).filter(s);
          },),
        Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [for (final bi in snapshot.data) ...[
                    Row(children: [
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 80, child: Text(bi.fmtcode),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text(bi.fstorage),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 220, child: Text(bi.fcaption),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text("${bi.qty}"),),
                    ],),
                    const Divider(color: Colors.black54),
                  ],
                    Row(children: [
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 80, child: Text(''),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text(''),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 220, child: Text(''),),
                      Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text("${(model as StoreItemsModel).dataQty(snapshot.data)}"),),
                    ],),]),
            )))]);
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
      InkWell(
          onTap: () {
            DlgIndex().getData(context, 'Պահեստ', HttpQuery.rAsStorageList).then((value) {
              if (value != null) {
                (model as StoreItemsModel).store = value;
                model.refresh();
              }
            });
          },
          child: Image.asset('assets/icons/filter.png', height: 40)),
    ];
  }
}