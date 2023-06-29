import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/MainPages/orders.dart';
import 'package:mobile_app/Widgets/show_qr_Code.dart';

class ShowOrders extends StatefulWidget {
  const ShowOrders({super.key});

  @override
  State<ShowOrders> createState() => _ShowOrdersState();
}

class _ShowOrdersState extends State<ShowOrders> {
  @override
  Widget build(BuildContext context) {
    return ind.showQr ? ShowQrCode() : Orders();
  }
}
