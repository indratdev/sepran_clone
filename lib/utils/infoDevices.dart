import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoDevices {
  dynamic _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }

// GETTER
  static Future<String> getDeviceInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('device_info') ?? '';
  }

// SETTER
  setDeviceInfo(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('device_info', value);
  }

  checkDeviceInfo() {
    final resultDevice = getDeviceInfo();
    print('device_info : $resultDevice');

    if (resultDevice == '') {
      String idDevice = _getId();
      setDeviceInfo(idDevice);
    }
  }
}



// cek apakah sudah ada device id nya
  // kl belum ada set dulu
  // kl udah ada 