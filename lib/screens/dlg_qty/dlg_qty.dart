import 'package:flutter/material.dart';

class DlgQty {

  static Future<double?> getQty(BuildContext context, String msg, String tara) async {
    final TextEditingController _controller = TextEditingController();
    return showDialog<double?>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        if (tara.isNotEmpty) {
          tara = 'Տարա՝ $tara կգ';
        }
        return AlertDialog(
          title: Text('Քանակ\r\n$msg\r\n$tara'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
            Row(children: [Expanded(child: TextFormField(
              maxLines: 1,
              autofocus: true,
              controller: _controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ))])]),
          actions: [
            Row(children:[
            TextButton(
              child: Text('Այո'),
              onPressed: () {
                Navigator.of(context).pop(double.parse(_controller.text));
              },
            ),
            Expanded(child: Container()),
            IconButton(onPressed: (){
              Navigator.of(context).pop(double.parse(_controller.text) + 1000000);
            }, icon: Icon(Icons.add, size: 40)),
            Expanded(child: Container()),
            TextButton(
              child: Text('Ոչ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )]),
          ],
        );
      },
    );
  }

  static void _result(BuildContext context, double v) {
    return Navigator.pop(context, v);
  }
}
