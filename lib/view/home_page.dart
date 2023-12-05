
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_generator/controller/qr_controller.dart';

class HomePageNew extends StatelessWidget {
  final QRController qrController = Get.put(QRController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => qrController.qrData.isNotEmpty ?
            QrImageView(
              data: qrController.qrData.value,
              version: QrVersions.auto,
              size: 200.0,
            ):Container()
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                qrController.generateQRCode();
                // Navigate to the next page if want to show QR Code Image on next page
                // Get.to(QRDisplayPage());
              },
              child: Text('Create QR'),
            ),
          ],
        ),
      ),
    );
  }
}
