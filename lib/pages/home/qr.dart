import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR TEST PAGE'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: (QrImage(
            data: 'gkgkgk',
            version: QrVersions.auto,
            size: 320,
            gapless: false,
          )),
        ),
      ),
    );
  }
}
