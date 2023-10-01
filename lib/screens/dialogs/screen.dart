import 'package:flutter/material.dart';

Future<void> appDialog(BuildContext context, String message) async {
  return showDialog(
      builder: (context) {
        return SimpleDialog(
          alignment: Alignment.center,
          contentPadding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
          children: [
            Image.asset('assets/icons/qr.png', width: 40, height: 40),
            const Divider(height: 20, color: Colors.lightBlueAccent),
            Text(
                textAlign: TextAlign.center,
                message,
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Փակել'))
          ],
        );
      },
      context: context);
}

Future<void> appDialogQuestion(
    BuildContext context, String message, Function? yes, Function? no) async {
  return showDialog(
      builder: (context) {
        return SimpleDialog(
          alignment: Alignment.center,
          contentPadding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
          children: [
            Image.asset('assets/icons/qr.png', width: 40, height: 40),
            const Divider(height: 20, color: Colors.lightBlueAccent),
            Text(
                textAlign: TextAlign.center,
                message,
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(child: Container()),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (yes != null) {
                      yes();
                    }
                  },
                  child: Text('Այո')),
              const SizedBox(width: 20),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (no != null) {
                      no();
                    }
                  },
                  child: Text('Ոչ')),
              Expanded(child: Container())
            ])
          ],
        );
      },
      context: context);
}
