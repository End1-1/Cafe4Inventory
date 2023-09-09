import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/config/screen.dart';
import 'package:cafe4_inventory/screens/docs/create_doc_screen.dart';
import 'package:cafe4_inventory/screens/docs/pin_form.dart';
import 'package:flutter/material.dart';

class DocsScreen extends AppScreen {
  @override
  Widget body(BuildContext context) {
    return Column(children: [
      Row(
        children: [

        ],
      )
    ]);
  }

  @override
  List<Widget> header(BuildContext context) {
    return [
      InkWell(
          onTap: () {
            showDialog(context: context, builder: (builder) {
              return SimpleDialog(
                children: [
                  PinForm()
                ],
              );
            }).then((value) {
              if ((value ?? false) == true) {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => ConfigScreen()));
              }
            });
          },
          child: Image.asset('assets/icons/config.png', height: 40)),
      Expanded(child: Container()),
      InkWell(
          onTap: () {
            showDialog(context: context, builder: (builder) {
              return SimpleDialog(
                children: [
                  CreateDocScreen()
                ],
              );
            }).then((value)  {

            });
          }, child: Image.asset('assets/icons/plus.png', height: 40))
    ];
  }
}
