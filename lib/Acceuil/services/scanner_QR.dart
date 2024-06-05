import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class Scanner_QR extends StatefulWidget {
  const Scanner_QR({super.key});

  @override
  State<Scanner_QR> createState() => _effectuer_payementState();
}

class _effectuer_payementState extends State<Scanner_QR> {

  // ignore: unused_field
  String _BarcodeResult = '';
  @override
  Widget build(BuildContext context) {
    return
    //bouton Effectuer payement.........................................
        Center(
          child: GestureDetector(
            onTap: () {
              QRCodeScan();
            },
            child: Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF007549),
                    boxShadow: [
                BoxShadow(
                    color: const Color(0xFF007549).withOpacity(.255),
                    blurRadius: 3,
                    spreadRadius: 3,
                    offset: const Offset(0, 2))
              ]),
              child: const Text(
                'Effectuer un payement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        );
  }

  // ignore: non_constant_identifier_names
  void QRCodeScan() async {
    String QRCode;
    try {
      QRCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", // Scan line color
          "Cancel", // Cancel button text
          true, // Whether to use the rear camera
          ScanMode.QR);
    } on PlatformException {
      QRCode = 'Echec PlatformException';
    }

    setState(() {
      _BarcodeResult = QRCode;
    });
  }
}

// Widget effectuer_payement(){
//   return const Center(child: Text('effectuer_payement'),);
// }