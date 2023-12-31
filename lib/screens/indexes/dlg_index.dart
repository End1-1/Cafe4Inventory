import 'package:cafe4_inventory/screens/indexes/model.dart';
import 'package:cafe4_inventory/structs/struct_amt_storage.dart';
import 'package:cafe4_inventory/structs/struct_as_storage.dart';
import 'package:cafe4_inventory/structs/struct_cafe.dart';
import 'package:cafe4_inventory/structs/struct_goods.dart';
import 'package:cafe4_inventory/structs/struct_storage.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:flutter/material.dart';

class DlgIndex {
  final model = DlgIndexModel();
  static const nameStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  Future<dynamic> getData(
      BuildContext context, String title, int request) async {
    if (request != HttpQuery.rGetGoodsNames) {
      model.request(request, '');
    }
    return await showDialog(
        context: context,
        builder: (builder) {
          return SimpleDialog(
            children: [
              Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.9,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  child: Text(
                            title,
                            textAlign: TextAlign.center,
                          )))
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                            onChanged: (s) {
                              if (s.length > 1) {
                                model.request(request, s);
                              }
                            },
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                          child: StreamBuilder(
                              stream: model.streamController.stream,
                              builder: (builder, snapshot) {
                                if (snapshot.data == null) {
                                  return const Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: CircularProgressIndicator()),
                                  );
                                }
                                if (snapshot.data is String) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: Text(snapshot.data!),
                                  );
                                }
                                return SingleChildScrollView(
                                  child: Column(
                                      children: list(
                                          context,
                                          snapshot.data[HttpQuery.kData],
                                          request)),
                                );
                              })),
                    ],
                  ))
            ],
          );
        });
  }

  List<Widget> list(BuildContext context, dynamic data, int request) {
    switch (request) {
      case HttpQuery.rListCafe:
        return listOfCafe(context, data as List<dynamic>);
      case HttpQuery.rListStore:
        return listOfStorage(context, data as List<dynamic>);
      case HttpQuery.rAmtStorageList:
        return listOfAmtStorage(context, data as List<dynamic>);
      case HttpQuery.rAsStorageList:
        return listOfAsStorage(context, data as List<dynamic>);
      case HttpQuery.rGetGoodsNames:
        return listOfGoodsNames(context, data as List<dynamic>);
    }
    return [];
  }

  List<Widget> listOfCafe(BuildContext context, List<dynamic> l) {
    final List<Widget> lw = [];
    for (final e in l) {
      StructCafe sc = StructCafe.fromJson(e);
      lw.add(Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pop(context, sc);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
              child: Text(sc.name, style: nameStyle),
            ),
          ))
        ],
      ));
    }
    return lw;
  }

  List<Widget> listOfStorage(BuildContext context, List<dynamic> l) {
    final List<Widget> lw = [];
    for (final e in l) {
      StructStorage ss = StructStorage.fromJson(e);
      lw.add(Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pop(context, ss);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
              child: Text(ss.name, style: nameStyle),
            ),
          ))
        ],
      ));
    }
    return lw;
  }

  List<Widget> listOfAmtStorage(BuildContext context, List<dynamic> l) {
    final List<Widget> lw = [];
    for (final e in l) {
      StructAmtStorage ss = StructAmtStorage.fromJson(e);
      lw.add(Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pop(context, ss);
            },
            child: Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Text(
                  ss.name,
                  style: nameStyle,
                  overflow: TextOverflow.ellipsis,
                )),
          ))
        ],
      ));
    }
    return lw;
  }

  List<Widget> listOfAsStorage(BuildContext context, List<dynamic> l) {
    final List<Widget> lw = [];
    for (final e in l) {
      StructAsStorage ss = StructAsStorage.fromJson(e);
      lw.add(Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pop(context, ss);
            },
            child: Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Text(
                  ss.name,
                  style: nameStyle,
                  overflow: TextOverflow.ellipsis,
                )),
          ))
        ],
      ));
    }
    return lw;
  }

  List<Widget> listOfGoodsNames(BuildContext context, List<dynamic> l) {
    final List<Widget> lw = [];
    for (final e in l) {
      StructGoods ss = StructGoods.fromJson(e);
      lw.add(Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pop(context, ss);
            },
            child: Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Text(
                  ss.name,
                  style: nameStyle,
                  overflow: TextOverflow.ellipsis,
                )),
          ))
        ],
      ));
    }
    return lw;
  }
}
