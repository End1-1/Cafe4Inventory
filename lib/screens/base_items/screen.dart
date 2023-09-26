import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/base_items/model.dart';
import 'package:cafe4_inventory/screens/indexes/dlg_index.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:flutter/material.dart';

class BaseItemsScreen extends AppScreen {
  final model = BaseItemsModel();

  BaseItemsScreen() {
    model.init();
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
          return Column(crossAxisAlignment: CrossAxisAlignment.start, children:[
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Container(margin: const EdgeInsets.all(3), width: 10, height: 10, child: Image.asset('assets/icons/search.png'))
              ),
              onChanged: (s) {
                (model as BaseItemsModel).filter(s);
            },),
            Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [for (final bi in snapshot.data) ...[
                      Row(children: [
                        Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 80, child: Text(bi.finvnumcode),),
                        InkWell(onTap:(){

                        },
                          onLongPress: (){

                          },
                          child: Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text(bi.fdepart),),),
                        Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 220, child: Text(bi.fcaption),),
                        Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text("${bi.qty()}"),),
                      ],),
                          const Divider(color: Colors.black54),
                    ],
                          Row(children: [
                            Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 80, child: Text(''),),
                            Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text(''),),
                            Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 220, child: Text(''),),
                            Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 50, child: Text("${(model as BaseItemsModel).dataQty(snapshot.data)}"),),
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
            DlgIndex().getData(context, 'Պահեստ', HttpQuery.rAmtStorageList).then((value) {
              if (value != null) {
                (model as BaseItemsModel).store = value;
                model.refresh();
              }
            });
          },
          child: Image.asset('assets/icons/filter.png', height: 40)),
    ];
  }
}
