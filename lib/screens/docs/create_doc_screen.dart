import 'package:cafe4_inventory/utils/squre_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:json_intl/json_intl.dart';

class CreateDocScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateDocScreen();
}

class _CreateDocScreen extends State<CreateDocScreen> {
  var dateTime = DateTime.now();
  final dateController = TextEditingController();
  final storeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        children: [
          Expanded(
              child: TextField(
            controller: dateController,
            readOnly: true,
          )),
          const SizedBox(width: 10),
          squareImageButton(() {
            showDialog(
                context: context,
                builder: (builder) {
                  return SimpleDialog(
                    children: [
                      SizedBox(
                        height: 100,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime(
                              dateTime.year, dateTime.month, dateTime.day),
                          onDateTimeChanged: (DateTime newDateTime) {
                            // Do something
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
                            Navigator.pop(context);
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
                  dateController.text = DateFormat('dd/MM/yyyy').format(dateTime);
                });
              }
            });
          }, 'assets/icons/edit.png')
        ],
      ),
      Row(
        children: [
          Text(context.tr(#storage)),
        ],
      )
    ]));
  }
}
