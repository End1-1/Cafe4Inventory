import 'package:flutter/material.dart';

Widget textField4(String label, TextEditingController? controller,
    {String value = ''}) {
  return TextFormField(
    decoration: InputDecoration(
        border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
        labelText: label),
    controller: controller,
    initialValue: value,
    readOnly: controller == null,
  );
}

Widget textFieldNum4(String label, TextEditingController? controller,
    {String value = ''}) {
  return TextFormField(
    decoration: InputDecoration(
        border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
        labelText: label),
    controller: (controller ?? TextEditingController())..text = value,
    readOnly: controller == null,
    minLines: 1,
    maxLines: 10,
  );
}

Widget expandedTextField4(String label, {TextEditingController? controller,
    String value = ''}) {
  return Expanded(child: textFieldNum4(label, controller, value: value));
}

Widget expandedTextFieldNum4(String label, TextEditingController controller,
    {String value = '0'}) {
  return Expanded(child: textFieldNum4(label, controller, value: value));
}
