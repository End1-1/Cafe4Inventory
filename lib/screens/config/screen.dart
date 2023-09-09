import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConfigScreen extends AppScreen {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [

      ],
    );
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
          onTap: () {}, child: Image.asset('assets/icons/save.png', height: 40))
    ];
  }

}