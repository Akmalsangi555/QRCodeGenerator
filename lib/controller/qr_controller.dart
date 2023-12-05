import 'package:get/get.dart';

class QRController extends GetxController {
  RxString qrData = ''.obs;

  void generateQRCode() {
    // Generate your QR code data here
    String newData = 'YourQRCodeData'; // Replace this with your actual data
    qrData.value = newData;
  }
}