import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/qr/screen.dart';
import 'package:cafe4_inventory/screens/qr_weight/dlg_edit.dart';
import 'package:cafe4_inventory/screens/qr_weight/model.dart';
import 'package:cafe4_inventory/structs/struct_qr_weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class QrWeightScreen extends AppScreen {
  QrWeightScreen({super.key}) : super(model: QrWeightModel());

  @override
  Widget body(BuildContext context) {
    model.refresh();
    return StreamBuilder(stream: model.controller.stream, builder: (builder, snapshot) {
      if (snapshot.data == null || snapshot.data is HttpLoading) {
        return httpLoading(context);
      }
      if (snapshot.data is HttpError) {
        return httpError(context, snapshot.data.error);
      }
      return Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Container(
                    margin: const EdgeInsets.all(3),
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/icons/search.png')),
                suffixIcon: InkWell(onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => QRReader())).then((value) {
                    if (value == null) {
                      return;
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => EditQrForm(model: model, qr: value.code))).then((value) {
                      model.refresh();
                    });
                  });
                }, child: Container(
                    margin: const EdgeInsets.all(3),
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/icons/qr.png')))),
            onChanged: (s) {
              (model as QrWeightModel).filter(s);
            },
          ),
          const SizedBox(height: 20),
          Expanded(child: ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.length,
              itemBuilder: (itemBuilder, index) {
              final StructQrWeight sq = snapshot.data[index];
              return InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => EditQrForm(model: model, qr: sq.qr))).then((value) {
                  model.refresh();
                });
              }, child: Row(
                children: [
                  Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 200, child: Text(sq.name),),
                  Container(margin: const EdgeInsets.fromLTRB(5, 5, 5, 10), width: 80, child: Text('${sq.qty}'),)
                ],
              ));
          }))
        ],
      );
    });
  }

  @override
  List<Widget> header(BuildContext context) {
    return [
      InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset('assets/icons/back.png', height: 40)),
      Expanded(child: Text('QR և քաշ խմբագրիչ')),

    ];
  }

}