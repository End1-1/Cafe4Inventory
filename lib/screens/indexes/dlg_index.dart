import 'package:cafe4_inventory/screens/indexes/model.dart';
import 'package:flutter/material.dart';

class DlgIndex {
  final model = DlgIndexModel();

  Future<dynamic?> getData(BuildContext context, String title, int request) async {
    model.request(request);
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
                          Expanded(child: Container(child: Text(title, textAlign: TextAlign.center,)))
                        ],
                      ),
                      Divider(),
                      StreamBuilder(
                          stream: model.streamController.stream,
                          builder: (builder, snapshot) {
                            if (snapshot.data == null) {
                              return const Expanded(
                                  child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator()),
                              ));
                            }
                            if(snapshot.data is String) {
                              return Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(snapshot.data!),
                                  ));
                            }
                            return Expanded(
                                child: SingleChildScrollView(
                              child: Column(),
                            ));
                          })
                    ],
                  ))
            ],
          );
        });
  }
}
