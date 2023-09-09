import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:flutter/material.dart';

abstract class AppScreen extends StatelessWidget {

  late final AppModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.fromLTRB(5, 30, 5, 5),
            child: Column(
                children: [Row(children: header(context)), body(context)])));
  }

  Widget body(BuildContext context);

  List<Widget> header(BuildContext context) {
    return [Container()];
  }
}
