import 'package:cafe4_inventory/utils/squre_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_intl/json_intl.dart';

class PinForm extends StatelessWidget {
  static final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Expanded(child: Container()),
          Align(
              child: SizedBox(
                  width: 72 * 3,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: context.tr(#enterPinCode)),
                    obscureText: true,
                    controller: _pinController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ))),
          Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          squareButton(() {
                            _pinController.text += '7';
                          }, '7'),
                          squareButton(() {
                            _pinController.text += '8';
                          }, '8'),
                          squareButton(() {
                            _pinController.text += '9';
                          }, '9'),
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          squareButton(() {
                            _pinController.text += '4';
                          }, '4'),
                          squareButton(() {
                            _pinController.text += '5';
                          }, '5'),
                          squareButton(() {
                            _pinController.text += '6';
                          }, '6'),
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          squareButton(() {
                            _pinController.text += '1';
                          }, '1'),
                          squareButton(() {
                            _pinController.text += '2';
                          }, '2'),
                          squareButton(() {
                            _pinController.text += '3';
                          }, '3'),
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          squareImageButton(() {
                            String code = _pinController.text;
                            _pinController.clear();
                            if (code == '1981') {
                              Navigator.pop(context, true);
                            }
                          }, 'assets/icons/ok.png', height: 72),
                          squareButton(() {
                            _pinController.text += '0';
                          }, '0'),
                          squareImageButton(() {
                            Navigator.pop(context);
                            _pinController.clear();
                          }, 'assets/icons/cancel.png', height: 72),
                        ],
                      ))
                ],
              )),
        ]);
  }
}
