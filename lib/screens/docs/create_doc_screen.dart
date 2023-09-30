import 'package:cafe4_inventory/screens/indexes/dlg_index.dart';
import 'package:cafe4_inventory/structs/struct_cafe.dart';
import 'package:cafe4_inventory/structs/struct_storage.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/squre_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateDocScreen extends StatefulWidget {
  const CreateDocScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CreateDocScreen();
}

class _CreateDocScreen extends State<CreateDocScreen> {
  var dateTime = DateTime.now();
  final dateController = TextEditingController();
  final cafeController = TextEditingController();
  final storeController = TextEditingController();
  StructCafe? cafe;
  StructStorage? storage;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(children: [
          Row(
            children: [
              Text('Ամսաթիվ'),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: dateController,
                readOnly: true,
              )),
              const SizedBox(width: 10),
              squareImageButton(
                () {
                  showDialog(
                      context: context,
                      builder: (builder) {
                        return SimpleDialog(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          children: [
                            SizedBox(
                              height: 150,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                initialDateTime: DateTime(dateTime.year,
                                    dateTime.month, dateTime.day),
                                onDateTimeChanged: (DateTime newDateTime) {
                                  dateTime = newDateTime;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                squareImageButton(() {
                                  Navigator.pop(context, dateTime);
                                }, 'assets/icons/ok.png', height: 72),
                                squareImageButton(() {
                                  Navigator.pop(context);
                                }, 'assets/icons/cancel.png', height: 72),
                              ],
                            )
                          ],
                        );
                      }).then((value) {
                    if (value != null) {
                      setState(() {
                        dateTime = value;
                        dateController.text =
                            DateFormat('dd/MM/yyyy').format(dateTime);
                      });
                    }
                  });
                },
                'assets/icons/edit.png',
                height: 30,
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text('Սրճարան'),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                    controller: cafeController,
                    readOnly: true,
                  )),
              const SizedBox(width: 10),
              squareImageButton(
                    () {
                  DlgIndex().getData(context, 'Սրճարան', HttpQuery.rListCafe).then((value) {
                    if (value != null) {
                      cafe = value;
                      cafeController.text = cafe!.name;
                    }
                  });
                },
                'assets/icons/edit.png',
                height: 30,
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text('Պահեստ'),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: storeController,
                readOnly: true,
              )),
              const SizedBox(width: 10),
              squareImageButton(
                () {
                  DlgIndex().getData(context, 'Պահեստ', HttpQuery.rListStore).then((value) {
    if (value != null) {
      storage = value;
      storeController.text = storage!.name;
    }

                  });
                },
                'assets/icons/edit.png',
                height: 30,
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              squareImageButton(() {
                Navigator.pop(context, dateTime);
              }, 'assets/icons/ok.png', height: 42),
              const SizedBox(width: 20),
              squareImageButton(() {
                Navigator.pop(context);
              }, 'assets/icons/cancel.png', height: 42),
            ],
          )
        ]));
  }
}
