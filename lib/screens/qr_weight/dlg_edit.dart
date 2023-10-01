import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/dialogs/screen.dart';
import 'package:cafe4_inventory/screens/indexes/dlg_index.dart';
import 'package:cafe4_inventory/screens/qr_weight/model.dart';
import 'package:cafe4_inventory/structs/struct_goods.dart';
import 'package:cafe4_inventory/structs/struct_qr_weight.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/squre_button.dart';
import 'package:cafe4_inventory/utils/textfield4.dart';
import 'package:flutter/material.dart';

class EditQrForm extends AppScreen {
  final weightController = TextEditingController();
  String qr;
  StructQrWeight? sq;

  EditQrForm({required super.model, required this.qr});

  @override
  Widget body(BuildContext context) {
    (model as QrWeightModel).getInfoByQr(qr);
    return StreamBuilder(
        stream: (model as QrWeightModel).qrController.stream,
        builder: (builder, snapshot) {
          if (snapshot.data == null || snapshot.data is HttpLoading) {
            return httpLoading(context);
          }
          if (snapshot.data is HttpError) {
            return httpError(context, snapshot.data.error);
          }
          sq = snapshot.data;
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  expandedTextField4('Տողի կոդ', value: '${sq!.id}'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  expandedTextField4('Ապրանքի կոդ', value: '${sq!.goods_id}'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  expandedTextField4('Բարկոդ', value: sq!.qr),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  expandedTextField4('Անվանում', value: sq!.name),
                  const SizedBox(width: 10,),
                  squareImageButton(() {
                    DlgIndex().getData(context, 'Ապևանք', HttpQuery.rGetGoodsNames).then((value) {
                      if (value == null) {
                        return;
                      }
                      sq = sq!.copyWith(goods_id: value!.id, name: value!.name);
                      (model as QrWeightModel).qrController.add(sq);
                    });
                  }, 'assets/icons/edit.png')
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  expandedTextFieldNum4('Տարաի քաշ', weightController, value: '${sq!.qty}'),
                ],
              )
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
      InkWell(
          onTap: () {
            sq = sq!.copyWith(qty: double.tryParse(weightController.text) ?? 0);
            HttpQuery().request({"request": HttpQuery.rSaveGoodsQrName}..addAll(sq!.toJson())).then((value) {
              if (value[HttpQuery.kStatus] != HttpQuery.hrOk) {
                appDialog(context, value[HttpQuery.kData]);
                return;
              }
              sq = StructQrWeight.fromJson(value);
              (model as QrWeightModel).qrController.add(sq);
            });
          },
          child: Image.asset('assets/icons/save.png', height: 40)),
    ];
  }


}
