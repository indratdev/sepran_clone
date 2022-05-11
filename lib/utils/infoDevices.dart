import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoDevices {
  _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      // iosDeviceInfo.identifierForVendor; // unique ID on iOS
      setPrefDeviceInfo(iosDeviceInfo.identifierForVendor.toString());
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      // androidDeviceInfo.androidId; // unique ID on Android
      setPrefDeviceInfo(androidDeviceInfo.androidId.toString());
    }
  }

// GETTER
  static Future<String> getDeviceInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('device_info') ?? '';
  }

// SETTER
  setPrefDeviceInfo(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('device_info', value);
  }

  checkDeviceInfo() async {
    final resultDevice = await getDeviceInfo();
    (resultDevice == '') ? _getId() : null;
  }
}
