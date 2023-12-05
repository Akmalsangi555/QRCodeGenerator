
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_generator/controller/qr_controller.dart';

class QRDisplayPage extends StatelessWidget {
  final QRController qrController = Get.put(QRController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Display', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
            qrController.qrData.isNotEmpty ?
            QrImageView(
              data: qrController.qrData.value,
              version: QrVersions.auto,
              size: 200.0,
            ):Container(),
            ),
          ],
        ),
      ),
    );
  }
}