
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class PageCode extends StatefulWidget {
  @override
   _PageCodeState createState() => _PageCodeState();
}

class _PageCodeState extends State<PageCode> {
  final qrKey = GlobalKey();
  Barcode? scannedBarcode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codigo QR'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                scannedBarcode != null
                    ? 'QR Code: ${scannedBarcode!.code}'
                    : 'No QR code scanned',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        scannedBarcode = scanData;
      });
    });
  }

  @override
  void dispose() {
    qrKey.currentState?.dispose();
    super.dispose();
  }
}
    