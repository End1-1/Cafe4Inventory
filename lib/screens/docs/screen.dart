import 'package:cafe4_inventory/screens/app/app_screen.dart';
import 'package:cafe4_inventory/screens/app/model.dart';
import 'package:cafe4_inventory/screens/aragamash/screen.dart';
import 'package:cafe4_inventory/screens/base_items/screen.dart';
import 'package:cafe4_inventory/screens/config/screen.dart';
import 'package:cafe4_inventory/screens/docs/pin_form.dart';
import 'package:cafe4_inventory/screens/indexes/dlg_index.dart';
import 'package:cafe4_inventory/screens/inventory/screen.dart';
import 'package:cafe4_inventory/screens/qr_weight/screen.dart';
import 'package:cafe4_inventory/screens/store_items/screen.dart';
import 'package:cafe4_inventory/utils/http_query.dart';
import 'package:cafe4_inventory/utils/prefs.dart';
import 'package:flutter/material.dart';

class DocsScreen extends AppScreen {
  DocsScreen({super.key}) : super(model: AppModel());

  @override
  Widget body(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      //BASE ITEMS
      if (prefs.string('baseitems') == '1') ...[
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => BaseItemsScreen()));
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/as.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Հիմնական միջոցներ')
          ]),
        ),

        //Search base item
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            _searchBaseItemByQr(context);
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/qr.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Փնտրել հիմնական միջոց')
          ]),
        ),
      ],

      // STORAGE
      const SizedBox(
        height: 10,
      ),
      if (prefs.string('storeitem') == '1') ...[
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => StoreItemsScreen()));
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/as.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Պահեստ')
          ]),
        ),

        //Search store item
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            _searchStoreItemByQr(context);
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/qr.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Փնտրել պահեստում')
          ]),
        ),
      ],

      //Search store item
      //if (prefs.string('inventory') == '1') ...[
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            _inventory(context);
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/inventory.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Գույքագրում')
          ]),
        ),
    // ],

      //Aragamash ararkaner
      if (prefs.string('baseitems') == '1') ...[
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => AragamashScreen()));
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/as.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Արագամաշ առառկաներ')
          ]),
        ),

        //Search base item
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            _searchAragamashByQr(context);
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/qr.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Փնտրել արագամաշ արարաներ')
          ]),
        ),
      ],

      //Edit qr and bottle weights
      if (prefs.string('editqr') == '1') ...[
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => QrWeightScreen()));
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/icons/weight.png', height: 40),
            const SizedBox(
              width: 10,
            ),
            const Text('Տարաների քաշերը')
          ]),
        ),
      ],
    ]);
  }

  @override
  List<Widget> header(BuildContext context) {
    return [
      InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (builder) {
                  return const SimpleDialog(
                    children: [PinForm()],
                  );
                }).then((value) {
              if ((value ?? false) == true) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ConfigScreen()));
              }
            });
          },
          child: Image.asset('assets/icons/config.png', height: 40)),
      Expanded(child: Container()),

      // const SizedBox(width: 10),
      // InkWell(
      //     onTap: () {
      //       showDialog(context: context, builder: (builder) {
      //         return SimpleDialog(
      //           children: [
      //             CreateDocScreen()
      //           ],
      //         );
      //       }).then((value)  {
      //
      //       });
      //     }, child: Image.asset('assets/icons/plus.png', height: 40))
    ];
  }

  void _searchBaseItemByQr(BuildContext context) {
    // Navigator.push(
    //         context, MaterialPageRoute(builder: (builder) => const QRReader()))
    //     .then((value) {
    //   if (value != null) {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (builder) => BaseItemsScreen(
    //                   itemQr: value.code,
    //                 )));
    //   }
    // });
  }

  void _searchStoreItemByQr(BuildContext context) {
    // Navigator.push(
    //         context, MaterialPageRoute(builder: (builder) => const QRReader()))
    //     .then((value) {
    //   if (value != null) {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (builder) => StoreItemsScreen(
    //                   itemQr: value.code,
    //                 )));
    //   }
    // });
  }

  void _searchAragamashByQr(BuildContext context) {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (builder) => const QRReader()))
    //     .then((value) {
    //   if (value != null) {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (builder) => AragamashScreen(
    //               itemQr: value.code,
    //             )));
    //   }
    // });
  }

  void _inventory(BuildContext context) {
    DlgIndex()
        .getData(context, 'Ընտրեք պահեստը', HttpQuery.rListStore)
        .then((value) {
      if (value == null) {
        return;
      }
      if (value.id == '2') {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => InventoryDocScreen(326)));
      }
    });
  }
}
