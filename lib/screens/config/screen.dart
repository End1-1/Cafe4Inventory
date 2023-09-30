import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/material.dart';

class ConfigScreen extends AppScreen {
  final configController = TextEditingController()..text = prefs.string(pkConfig);
  final dbController = TextEditingController()..text = prefs.string(pkWorkingDb);

  ConfigScreen({super.key}) : super(model: AppModel());

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
          Row(children: [
            Expanded(child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Կոնֆիգուրացիա',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12))
              ),
              controller: configController,))
          ],),
        const SizedBox(height: 20,),
        Row(children: [
          Expanded(child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Պահիցի անուն',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12))
            ),
            controller: dbController,))
        ],)
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
          onTap: () {
            Navigator.pop(context);
            prefs.setString(pkConfig, configController.text);
            prefs.setString(pkWorkingDb, dbController.text);
          }, child: Image.asset('assets/icons/save.png', height: 40))
    ];
  }

}