import 'package:flutter/material.dart';

class Setting {
  Icon iconSetting;
  String labelSetting;
  String routeSetting;

  Setting(
      {this.iconSetting = const Icon(Icons.error),
      this.labelSetting = 'no name',
      required this.routeSetting});
}

class MenuSetting {
  List<Setting> getListSettings = [
    Setting(labelSetting: 'Backup Data', routeSetting: '/setting/backupData'),
    Setting(
        labelSetting: 'Warna Tema',
        routeSetting: '/setting/warnaTema',
        iconSetting: Icon(Icons.color_lens)),
  ];
}
