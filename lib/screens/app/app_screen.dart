import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:flutter/material.dart';

abstract class AppScreen extends StatelessWidget {
  final AppModel model;

  const AppScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.fromLTRB(5, 30, 5, 5),
            child: Column(children: [
              Row(children: header(context)),
              Expanded(child: body(context))
            ])));
  }

  Widget body(BuildContext context);

  List<Widget> header(BuildContext context) {
    return [Container()];
  }

  Widget httpError(BuildContext context, String error) {
    return Align(
        alignment: Alignment.center,
        child:  Column(children: [
              Text(error),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    model.refresh();
                  },
                  child: const Text('Փորձել կրկին'))
            ]));
  }

  Widget httpLoading(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 30,
        width: 30,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
