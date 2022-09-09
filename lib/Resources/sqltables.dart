import 'package:sqflite/sqflite.dart';

class SqlTables {
  insertOpsCategory(
      Database db, String tableOpsCategory, String createTime) async {
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'GAJI', 'sackDollar', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'TABUNGAN', 'piggyBank', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'DEPOSITO', 'buildingColumns', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'PENDAPATAN LAINNYA', 'boxesStacked', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'MAKANAN & MINUMAN', 'champagneGlasses', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'TRANSPORTASI', 'car', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'RENTAL', 'cars', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PEMBAYARAN', 'fileInvoiceDollar', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'ASURANSI', 'handHoldingHeart', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PEMELIHARAAN KENDARAAN', 'screwdriverWrench', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PENGELUARAN LAINNYA', 'boxesStacked', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'FITNESS', 'dumbbell', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'MAKEUP', 'heart', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'HADIAH', 'gifts', 1, 1, '$createTime', '');   ''');
    await db.rawInsert(
        ''' INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'REKREASI', 'umbrellaBeach', 1, 1, '$createTime', '');   ''');
  }

  inserMasterCategory(Database db, String tableMasterCategory) async {
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('accessibleIcon', 'IconDataBrands(0xf368)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('sackDollar', 'FontAwesomeIcons.sackDollar'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('piggyBank', 'FontAwesomeIcons.piggyBank'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('buildingColumns', 'FontAwesomeIcons.buildingColumns'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('boxesStacked', 'FontAwesomeIcons.boxesStacked'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('champagneGlasses', 'FontAwesomeIcons.champagneGlasses'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('car', 'FontAwesomeIcons.car'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('cars', 'FontAwesomeIcons.carSide'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('houseCrack', 'FontAwesomeIcons.houseCrack'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fileInvoiceDollar', 'FontAwesomeIcons.fileInvoiceDollar'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('handHoldingHeart', 'FontAwesomeIcons.handHoldingHeart'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('screwdriverWrench', 'FontAwesomeIcons.screwdriverWrench'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('dumbbell', 'FontAwesomeIcons.dumbbell'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('heart', 'FontAwesomeIcons.heart'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('gifts', 'FontAwesomeIcons.gifts'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('umbrellaBeach', 'FontAwesomeIcons.umbrellaBeach'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-500px', 'IconDataBrands(0xf26e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-accessible-icon', 'IconDataBrands(0xf368)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-accusoft', 'IconDataBrands(0xf369)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-acquisitions-incorporated', 'IconDataBrands(0xf6af)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ad', 'IconDataBrands(0xf641)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-address-book', 'IconDataBrands(0xf2b9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-address-card', 'IconDataBrands(0xf2bb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-adjust', 'IconDataBrands(0xf042)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-adn', 'IconDataBrands(0xf170)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-adobe', 'IconDataBrands(0xf778)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-adversal', 'IconDataBrands(0xf36a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-affiliatetheme', 'IconDataBrands(0xf36b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-air-freshener', 'IconDataBrands(0xf5d0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-algolia', 'IconDataBrands(0xf36c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-align-center', 'IconDataBrands(0xf037)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-align-justify', 'IconDataBrands(0xf039)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-align-left', 'IconDataBrands(0xf036)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-align-right', 'IconDataBrands(0xf038)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-alipay', 'IconDataBrands(0xf642)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-allergies', 'IconDataBrands(0xf461)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-amazon', 'IconDataBrands(0xf270)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-amazon-pay', 'IconDataBrands(0xf42c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ambulance', 'IconDataBrands(0xf0f9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-american-sign-language-interpreting', 'IconDataBrands(0xf2a3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-amilia', 'IconDataBrands(0xf36d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-anchor', 'IconDataBrands(0xf13d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-android', 'IconDataBrands(0xf17b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angellist', 'IconDataBrands(0xf209)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-double-down', 'IconDataBrands(0xf103)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-double-left', 'IconDataBrands(0xf100)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-double-right', 'IconDataBrands(0xf101)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-double-up', 'IconDataBrands(0xf102)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-down', 'IconDataBrands(0xf107)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-left', 'IconDataBrands(0xf104)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-right', 'IconDataBrands(0xf105)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angle-up', 'IconDataBrands(0xf106)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angry', 'IconDataBrands(0xf556)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angrycreative', 'IconDataBrands(0xf36e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-angular', 'IconDataBrands(0xf420)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ankh', 'IconDataBrands(0xf644)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-app-store', 'IconDataBrands(0xf36f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-app-store-ios', 'IconDataBrands(0xf370)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-apper', 'IconDataBrands(0xf371)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-apple', 'IconDataBrands(0xf179)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-apple-alt', 'IconDataBrands(0xf5d1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-apple-pay', 'IconDataBrands(0xf415)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-archive', 'IconDataBrands(0xf187)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-archway', 'IconDataBrands(0xf557)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-alt-circle-down', 'IconDataBrands(0xf358)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-alt-circle-left', 'IconDataBrands(0xf359)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-alt-circle-right', 'IconDataBrands(0xf35a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-alt-circle-up', 'IconDataBrands(0xf35b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-circle-down', 'IconDataBrands(0xf0ab)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-circle-left', 'IconDataBrands(0xf0a8)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-circle-right', 'IconDataBrands(0xf0a9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-circle-up', 'IconDataBrands(0xf0aa)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-down', 'IconDataBrands(0xf063)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-left', 'IconDataBrands(0xf060)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-right', 'IconDataBrands(0xf061)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrow-up', 'IconDataBrands(0xf062)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrows-alt', 'IconDataBrands(0xf0b2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrows-alt-h', 'IconDataBrands(0xf337)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-arrows-alt-v', 'IconDataBrands(0xf338)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-artstation', 'IconDataBrands(0xf77a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-assistive-listening-systems', 'IconDataBrands(0xf2a2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-asterisk', 'IconDataBrands(0xf069)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-asymmetrik', 'IconDataBrands(0xf372)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-at', 'IconDataBrands(0xf1fa)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-atlas', 'IconDataBrands(0xf558)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-atlassian', 'IconDataBrands(0xf77b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-atom', 'IconDataBrands(0xf5d2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-audible', 'IconDataBrands(0xf373)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-audio-description', 'IconDataBrands(0xf29e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-autoprefixer', 'IconDataBrands(0xf41c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-avianex', 'IconDataBrands(0xf374)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-aviato', 'IconDataBrands(0xf421)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-award', 'IconDataBrands(0xf559)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-aws', 'IconDataBrands(0xf375)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-baby', 'IconDataBrands(0xf77c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-baby-carriage', 'IconDataBrands(0xf77d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-backspace', 'IconDataBrands(0xf55a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-backward', 'IconDataBrands(0xf04a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bacon', 'IconDataBrands(0xf7e5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bahai', 'IconDataBrands(0xf666)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-balance-scale', 'IconDataBrands(0xf24e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-balance-scale-left', 'IconDataBrands(0xf515)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-balance-scale-right', 'IconDataBrands(0xf516)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ban', 'IconDataBrands(0xf05e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-band-aid', 'IconDataBrands(0xf462)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bandcamp', 'IconDataBrands(0xf2d5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-barcode', 'IconDataBrands(0xf02a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bars', 'IconDataBrands(0xf0c9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-baseball-ball', 'IconDataBrands(0xf433)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-basketball-ball', 'IconDataBrands(0xf434)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bath', 'IconDataBrands(0xf2cd)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-battery-empty', 'IconDataBrands(0xf244)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-battery-full', 'IconDataBrands(0xf240)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-battery-half', 'IconDataBrands(0xf242)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-battery-quarter', 'IconDataBrands(0xf243)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-battery-three-quarters', 'IconDataBrands(0xf241)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bed', 'IconDataBrands(0xf236)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-beer', 'IconDataBrands(0xf0fc)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-behance', 'IconDataBrands(0xf1b4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-behance-square', 'IconDataBrands(0xf1b5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bell', 'IconDataBrands(0xf0f3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bell-slash', 'IconDataBrands(0xf1f6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bezier-curve', 'IconDataBrands(0xf55b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bible', 'IconDataBrands(0xf647)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bicycle', 'IconDataBrands(0xf206)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-biking', 'IconDataBrands(0xf84a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bimobject', 'IconDataBrands(0xf378)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-binoculars', 'IconDataBrands(0xf1e5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-biohazard', 'IconDataBrands(0xf780)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-birthday-cake', 'IconDataBrands(0xf1fd)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bitbucket', 'IconDataBrands(0xf171)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bitcoin', 'IconDataBrands(0xf379)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bity', 'IconDataBrands(0xf37a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-black-tie', 'IconDataBrands(0xf27e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blackberry', 'IconDataBrands(0xf37b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blender', 'IconDataBrands(0xf517)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blender-phone', 'IconDataBrands(0xf6b6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blind', 'IconDataBrands(0xf29d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blog', 'IconDataBrands(0xf781)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blogger', 'IconDataBrands(0xf37c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-blogger-b', 'IconDataBrands(0xf37d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bluetooth', 'IconDataBrands(0xf293)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bluetooth-b', 'IconDataBrands(0xf294)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bold', 'IconDataBrands(0xf032)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bolt', 'IconDataBrands(0xf0e7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bomb', 'IconDataBrands(0xf1e2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bone', 'IconDataBrands(0xf5d7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bong', 'IconDataBrands(0xf55c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-book', 'IconDataBrands(0xf02d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-book-dead', 'IconDataBrands(0xf6b7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-book-medical', 'IconDataBrands(0xf7e6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-book-open', 'IconDataBrands(0xf518)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-book-reader', 'IconDataBrands(0xf5da)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bookmark', 'IconDataBrands(0xf02e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-border-all', 'IconDataBrands(0xf84c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-border-none', 'IconDataBrands(0xf850)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-border-style', 'IconDataBrands(0xf883)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bowling-ball', 'IconDataBrands(0xf436)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-box', 'IconDataBrands(0xf466)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-box-open', 'IconDataBrands(0xf49e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-box-tissue', 'IconDataBrands(0xf95b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-boxes', 'IconDataBrands(0xf468)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-braille', 'IconDataBrands(0xf2a1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-brain', 'IconDataBrands(0xf5dc)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bread-slice', 'IconDataBrands(0xf7ec)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-briefcase', 'IconDataBrands(0xf0b1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-briefcase-medical', 'IconDataBrands(0xf469)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-broadcast-tower', 'IconDataBrands(0xf519)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-broom', 'IconDataBrands(0xf51a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-brush', 'IconDataBrands(0xf55d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-btc', 'IconDataBrands(0xf15a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bug', 'IconDataBrands(0xf188)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-building', 'IconDataBrands(0xf1ad)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bullhorn', 'IconDataBrands(0xf0a1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bullseye', 'IconDataBrands(0xf140)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-burn', 'IconDataBrands(0xf46a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-buromobelexperte', 'IconDataBrands(0xf37f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bus', 'IconDataBrands(0xf207)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-bus-alt', 'IconDataBrands(0xf55e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-business-time', 'IconDataBrands(0xf64a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-buysellads', 'IconDataBrands(0xf20d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calculator', 'IconDataBrands(0xf1ec)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar', 'IconDataBrands(0xf133)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-alt', 'IconDataBrands(0xf073)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-check', 'IconDataBrands(0xf274)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-day', 'IconDataBrands(0xf783)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-minus', 'IconDataBrands(0xf272)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-plus', 'IconDataBrands(0xf271)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-times', 'IconDataBrands(0xf273)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-calendar-week', 'IconDataBrands(0xf784)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-camera', 'IconDataBrands(0xf030)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-camera-retro', 'IconDataBrands(0xf083)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-campground', 'IconDataBrands(0xf6bb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-canadian-maple-leaf', 'IconDataBrands(0xf785)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-candy-cane', 'IconDataBrands(0xf786)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cannabis', 'IconDataBrands(0xf55f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-capsules', 'IconDataBrands(0xf46b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-car', 'IconDataBrands(0xf1b9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-car-alt', 'IconDataBrands(0xf5de)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-car-battery', 'IconDataBrands(0xf5df)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-car-crash', 'IconDataBrands(0xf5e1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-car-side', 'IconDataBrands(0xf5e4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caravan', 'IconDataBrands(0xf8ff)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-down', 'IconDataBrands(0xf0d7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-left', 'IconDataBrands(0xf0d9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-right', 'IconDataBrands(0xf0da)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-square-down', 'IconDataBrands(0xf150)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-square-left', 'IconDataBrands(0xf191)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-square-right', 'IconDataBrands(0xf152)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-square-up', 'IconDataBrands(0xf151)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-caret-up', 'IconDataBrands(0xf0d8)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-carrot', 'IconDataBrands(0xf787)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cart-arrow-down', 'IconDataBrands(0xf218)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cart-plus', 'IconDataBrands(0xf217)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cash-register', 'IconDataBrands(0xf788)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cat', 'IconDataBrands(0xf6be)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-amazon-pay', 'IconDataBrands(0xf42d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-amex', 'IconDataBrands(0xf1f3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-apple-pay', 'IconDataBrands(0xf416)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-diners-club', 'IconDataBrands(0xf24c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-discover', 'IconDataBrands(0xf1f2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-jcb', 'IconDataBrands(0xf24b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-mastercard', 'IconDataBrands(0xf1f1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-paypal', 'IconDataBrands(0xf1f4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-stripe', 'IconDataBrands(0xf1f5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cc-visa', 'IconDataBrands(0xf1f0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-centercode', 'IconDataBrands(0xf380)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-centos', 'IconDataBrands(0xf789)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-certificate', 'IconDataBrands(0xf0a3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chair', 'IconDataBrands(0xf6c0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chalkboard', 'IconDataBrands(0xf51b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chalkboard-teacher', 'IconDataBrands(0xf51c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-charging-station', 'IconDataBrands(0xf5e7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chart-area', 'IconDataBrands(0xf1fe)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chart-bar', 'IconDataBrands(0xf080)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chart-line', 'IconDataBrands(0xf201)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chart-pie', 'IconDataBrands(0xf200)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-check', 'IconDataBrands(0xf00c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-check-circle', 'IconDataBrands(0xf058)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-check-double', 'IconDataBrands(0xf560)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-check-square', 'IconDataBrands(0xf14a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cheese', 'IconDataBrands(0xf7ef)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess', 'IconDataBrands(0xf439)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-bishop', 'IconDataBrands(0xf43a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-board', 'IconDataBrands(0xf43c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-king', 'IconDataBrands(0xf43f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-knight', 'IconDataBrands(0xf441)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-pawn', 'IconDataBrands(0xf443)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-queen', 'IconDataBrands(0xf445)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chess-rook', 'IconDataBrands(0xf447)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-circle-down', 'IconDataBrands(0xf13a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-circle-left', 'IconDataBrands(0xf137)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-circle-right', 'IconDataBrands(0xf138)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-circle-up', 'IconDataBrands(0xf139)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-down', 'IconDataBrands(0xf078)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-left', 'IconDataBrands(0xf053)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-right', 'IconDataBrands(0xf054)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chevron-up', 'IconDataBrands(0xf077)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-child', 'IconDataBrands(0xf1ae)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-chrome', 'IconDataBrands(0xf268)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-church', 'IconDataBrands(0xf51d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-circle', 'IconDataBrands(0xf111)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-circle-notch', 'IconDataBrands(0xf1ce)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-city', 'IconDataBrands(0xf64f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clinic-medical', 'IconDataBrands(0xf7f2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clipboard', 'IconDataBrands(0xf328)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clipboard-check', 'IconDataBrands(0xf46c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clipboard-list', 'IconDataBrands(0xf46d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clock', 'IconDataBrands(0xf017)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-clone', 'IconDataBrands(0xf24d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-closed-captioning', 'IconDataBrands(0xf20a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud', 'IconDataBrands(0xf0c2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-download-alt', 'IconDataBrands(0xf381)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-meatball', 'IconDataBrands(0xf73b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-moon', 'IconDataBrands(0xf6c3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-moon-rain', 'IconDataBrands(0xf73c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-rain', 'IconDataBrands(0xf73d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-showers-heavy', 'IconDataBrands(0xf740)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-sun', 'IconDataBrands(0xf6c4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-sun-rain', 'IconDataBrands(0xf743)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloud-upload-alt', 'IconDataBrands(0xf382)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloudscale', 'IconDataBrands(0xf383)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloudsmith', 'IconDataBrands(0xf384)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cloudversify', 'IconDataBrands(0xf385)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cocktail', 'IconDataBrands(0xf561)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-code', 'IconDataBrands(0xf121)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-code-branch', 'IconDataBrands(0xf126)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-codepen', 'IconDataBrands(0xf1cb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-codiepie', 'IconDataBrands(0xf284)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-coffee', 'IconDataBrands(0xf0f4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cog', 'IconDataBrands(0xf013)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cogs', 'IconDataBrands(0xf085)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-coins', 'IconDataBrands(0xf51e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-columns', 'IconDataBrands(0xf0db)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment', 'IconDataBrands(0xf075)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment-alt', 'IconDataBrands(0xf27a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment-dollar', 'IconDataBrands(0xf651)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment-dots', 'IconDataBrands(0xf4ad)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment-medical', 'IconDataBrands(0xf7f5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comment-slash', 'IconDataBrands(0xf4b3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comments', 'IconDataBrands(0xf086)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-comments-dollar', 'IconDataBrands(0xf653)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-compact-disc', 'IconDataBrands(0xf51f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-compass', 'IconDataBrands(0xf14e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-compress', 'IconDataBrands(0xf066)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-compress-alt', 'IconDataBrands(0xf422)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-compress-arrows-alt', 'IconDataBrands(0xf78c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-concierge-bell', 'IconDataBrands(0xf562)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-confluence', 'IconDataBrands(0xf78d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-connectdevelop', 'IconDataBrands(0xf20e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-contao', 'IconDataBrands(0xf26d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cookie', 'IconDataBrands(0xf563)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cookie-bite', 'IconDataBrands(0xf564)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-copy', 'IconDataBrands(0xf0c5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-copyright', 'IconDataBrands(0xf1f9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cotton-bureau', 'IconDataBrands(0xf89e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-couch', 'IconDataBrands(0xf4b8)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cpanel', 'IconDataBrands(0xf388)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons', 'IconDataBrands(0xf25e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-by', 'IconDataBrands(0xf4e7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-nc', 'IconDataBrands(0xf4e8)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-nc-eu', 'IconDataBrands(0xf4e9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-nc-jp', 'IconDataBrands(0xf4ea)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-nd', 'IconDataBrands(0xf4eb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-pd', 'IconDataBrands(0xf4ec)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-pd-alt', 'IconDataBrands(0xf4ed)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-remix', 'IconDataBrands(0xf4ee)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-sa', 'IconDataBrands(0xf4ef)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-sampling', 'IconDataBrands(0xf4f0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-sampling-plus', 'IconDataBrands(0xf4f1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-share', 'IconDataBrands(0xf4f2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-creative-commons-zero', 'IconDataBrands(0xf4f3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-credit-card', 'IconDataBrands(0xf09d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-critical-role', 'IconDataBrands(0xf6c9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crop', 'IconDataBrands(0xf125)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crop-alt', 'IconDataBrands(0xf565)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cross', 'IconDataBrands(0xf654)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crosshairs', 'IconDataBrands(0xf05b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crow', 'IconDataBrands(0xf520)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crown', 'IconDataBrands(0xf521)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-crutch', 'IconDataBrands(0xf7f7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-css3', 'IconDataBrands(0xf13c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-css3-alt', 'IconDataBrands(0xf38b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cube', 'IconDataBrands(0xf1b2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cubes', 'IconDataBrands(0xf1b3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cut', 'IconDataBrands(0xf0c4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-cuttlefish', 'IconDataBrands(0xf38c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-d-and-d', 'IconDataBrands(0xf38d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-d-and-d-beyond', 'IconDataBrands(0xf6ca)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dashcube', 'IconDataBrands(0xf210)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-database', 'IconDataBrands(0xf1c0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-deaf', 'IconDataBrands(0xf2a4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-delicious', 'IconDataBrands(0xf1a5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-democrat', 'IconDataBrands(0xf747)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-deploydog', 'IconDataBrands(0xf38e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-deskpro', 'IconDataBrands(0xf38f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-desktop', 'IconDataBrands(0xf108)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dev', 'IconDataBrands(0xf6cc)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-deviantart', 'IconDataBrands(0xf1bd)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dharmachakra', 'IconDataBrands(0xf655)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dhl', 'IconDataBrands(0xf790)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-diagnoses', 'IconDataBrands(0xf470)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-diaspora', 'IconDataBrands(0xf791)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice', 'IconDataBrands(0xf522)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-d20', 'IconDataBrands(0xf6cf)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-d6', 'IconDataBrands(0xf6d1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-five', 'IconDataBrands(0xf523)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-four', 'IconDataBrands(0xf524)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-one', 'IconDataBrands(0xf525)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-six', 'IconDataBrands(0xf526)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-three', 'IconDataBrands(0xf527)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dice-two', 'IconDataBrands(0xf528)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-digg', 'IconDataBrands(0xf1a6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-digital-ocean', 'IconDataBrands(0xf391)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-digital-tachograph', 'IconDataBrands(0xf566)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-directions', 'IconDataBrands(0xf5eb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-discord', 'IconDataBrands(0xf392)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-discourse', 'IconDataBrands(0xf393)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-divide', 'IconDataBrands(0xf529)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dizzy', 'IconDataBrands(0xf567)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dna', 'IconDataBrands(0xf471)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dochub', 'IconDataBrands(0xf394)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-docker', 'IconDataBrands(0xf395)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dog', 'IconDataBrands(0xf6d3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dollar-sign', 'IconDataBrands(0xf155)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dolly', 'IconDataBrands(0xf472)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dolly-flatbed', 'IconDataBrands(0xf474)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-donate', 'IconDataBrands(0xf4b9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-door-closed', 'IconDataBrands(0xf52a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-door-open', 'IconDataBrands(0xf52b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dot-circle', 'IconDataBrands(0xf192)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dove', 'IconDataBrands(0xf4ba)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-download', 'IconDataBrands(0xf019)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-draft2digital', 'IconDataBrands(0xf396)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-drafting-compass', 'IconDataBrands(0xf568)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dragon', 'IconDataBrands(0xf6d5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-draw-polygon', 'IconDataBrands(0xf5ee)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dribbble', 'IconDataBrands(0xf17d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dribbble-square', 'IconDataBrands(0xf397)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dropbox', 'IconDataBrands(0xf16b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-drum', 'IconDataBrands(0xf569)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-drum-steelpan', 'IconDataBrands(0xf56a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-drumstick-bite', 'IconDataBrands(0xf6d7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-drupal', 'IconDataBrands(0xf1a9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dumbbell', 'IconDataBrands(0xf44b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dumpster', 'IconDataBrands(0xf793)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dumpster-fire', 'IconDataBrands(0xf794)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dungeon', 'IconDataBrands(0xf6d9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-dyalog', 'IconDataBrands(0xf399)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-earlybirds', 'IconDataBrands(0xf39a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ebay', 'IconDataBrands(0xf4f4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-edge', 'IconDataBrands(0xf282)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-edit', 'IconDataBrands(0xf044)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-egg', 'IconDataBrands(0xf7fb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-eject', 'IconDataBrands(0xf052)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-elementor', 'IconDataBrands(0xf430)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ellipsis-h', 'IconDataBrands(0xf141)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ellipsis-v', 'IconDataBrands(0xf142)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ello', 'IconDataBrands(0xf5f1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ember', 'IconDataBrands(0xf423)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-empire', 'IconDataBrands(0xf1d1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-envelope', 'IconDataBrands(0xf0e0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-envelope-open', 'IconDataBrands(0xf2b6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-envelope-open-text', 'IconDataBrands(0xf658)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-envelope-square', 'IconDataBrands(0xf199)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-envira', 'IconDataBrands(0xf299)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-equals', 'IconDataBrands(0xf52c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-eraser', 'IconDataBrands(0xf12d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-erlang', 'IconDataBrands(0xf39d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ethereum', 'IconDataBrands(0xf42e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-ethernet', 'IconDataBrands(0xf796)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-etsy', 'IconDataBrands(0xf2d7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-euro-sign', 'IconDataBrands(0xf153)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-exchange-alt', 'IconDataBrands(0xf362)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-exclamation', 'IconDataBrands(0xf12a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-exclamation-circle', 'IconDataBrands(0xf06a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-exclamation-triangle', 'IconDataBrands(0xf071)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-expand', 'IconDataBrands(0xf065)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-expand-alt', 'IconDataBrands(0xf424)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-expand-arrows-alt', 'IconDataBrands(0xf31e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-expeditedssl', 'IconDataBrands(0xf23e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-external-link-alt', 'IconDataBrands(0xf35d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-external-link-square-alt', 'IconDataBrands(0xf360)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-eye', 'IconDataBrands(0xf06e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-eye-dropper', 'IconDataBrands(0xf1fb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-eye-slash', 'IconDataBrands(0xf070)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-facebook', 'IconDataBrands(0xf09a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-facebook-f', 'IconDataBrands(0xf39e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-facebook-messenger', 'IconDataBrands(0xf39f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-facebook-square', 'IconDataBrands(0xf082)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fan', 'IconDataBrands(0xf863)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fantasy-flight-games', 'IconDataBrands(0xf6dc)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fast-backward', 'IconDataBrands(0xf049)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fast-forward', 'IconDataBrands(0xf050)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fax', 'IconDataBrands(0xf1ac)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-feather', 'IconDataBrands(0xf52d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-feather-alt', 'IconDataBrands(0xf56b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fedex', 'IconDataBrands(0xf797)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fedora', 'IconDataBrands(0xf798)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-female', 'IconDataBrands(0xf182)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fighter-jet', 'IconDataBrands(0xf0fb)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-figma', 'IconDataBrands(0xf799)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file', 'IconDataBrands(0xf15b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-alt', 'IconDataBrands(0xf15c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-archive', 'IconDataBrands(0xf1c6)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-audio', 'IconDataBrands(0xf1c7)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-code', 'IconDataBrands(0xf1c9)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-contract', 'IconDataBrands(0xf56c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-csv', 'IconDataBrands(0xf6dd)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-download', 'IconDataBrands(0xf56d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-excel', 'IconDataBrands(0xf1c3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-export', 'IconDataBrands(0xf56e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-image', 'IconDataBrands(0xf1c5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-import', 'IconDataBrands(0xf56f)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-invoice', 'IconDataBrands(0xf570)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-invoice-dollar', 'IconDataBrands(0xf571)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-medical', 'IconDataBrands(0xf477)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-medical-alt', 'IconDataBrands(0xf478)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-pdf', 'IconDataBrands(0xf1c1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-powerpoint', 'IconDataBrands(0xf1c4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-prescription', 'IconDataBrands(0xf572)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-signature', 'IconDataBrands(0xf573)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-upload', 'IconDataBrands(0xf574)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-video', 'IconDataBrands(0xf1c8)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-file-word', 'IconDataBrands(0xf1c2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fill', 'IconDataBrands(0xf575)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fill-drip', 'IconDataBrands(0xf576)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-film', 'IconDataBrands(0xf008)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-filter', 'IconDataBrands(0xf0b0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fingerprint', 'IconDataBrands(0xf577)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fire', 'IconDataBrands(0xf06d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fire-alt', 'IconDataBrands(0xf7e4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fire-extinguisher', 'IconDataBrands(0xf134)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-firefox', 'IconDataBrands(0xf269)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-firefox-browser', 'IconDataBrands(0xf907)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-first-aid', 'IconDataBrands(0xf479)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-first-order', 'IconDataBrands(0xf2b0)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-first-order-alt', 'IconDataBrands(0xf50a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-firstdraft', 'IconDataBrands(0xf3a1)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fish', 'IconDataBrands(0xf578)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fist-raised', 'IconDataBrands(0xf6de)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flag', 'IconDataBrands(0xf024)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flag-checkered', 'IconDataBrands(0xf11e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flag-usa', 'IconDataBrands(0xf74d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flask', 'IconDataBrands(0xf0c3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flickr', 'IconDataBrands(0xf16e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flipboard', 'IconDataBrands(0xf44d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-flushed', 'IconDataBrands(0xf579)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fly', 'IconDataBrands(0xf417)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-folder', 'IconDataBrands(0xf07b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-folder-minus', 'IconDataBrands(0xf65d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-folder-open', 'IconDataBrands(0xf07c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-folder-plus', 'IconDataBrands(0xf65e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-font', 'IconDataBrands(0xf031)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-font-awesome', 'IconDataBrands(0xf2b4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-font-awesome-alt', 'IconDataBrands(0xf35c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-font-awesome-flag', 'IconDataBrands(0xf425)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fonticons', 'IconDataBrands(0xf280)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fonticons-fi', 'IconDataBrands(0xf3a2)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-football-ball', 'IconDataBrands(0xf44e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fort-awesome', 'IconDataBrands(0xf286)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fort-awesome-alt', 'IconDataBrands(0xf3a3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-forumbee', 'IconDataBrands(0xf211)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-forward', 'IconDataBrands(0xf04e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-foursquare', 'IconDataBrands(0xf180)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-free-code-camp', 'IconDataBrands(0xf2c5)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-freebsd', 'IconDataBrands(0xf3a4)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-frog', 'IconDataBrands(0xf52e)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-frown', 'IconDataBrands(0xf119)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-frown-open', 'IconDataBrands(0xf57a)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-fulcrum', 'IconDataBrands(0xf50b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-funnel-dollar', 'IconDataBrands(0xf662)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-futbol', 'IconDataBrands(0xf1e3)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-galactic-republic', 'IconDataBrands(0xf50c)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-galactic-senate', 'IconDataBrands(0xf50d)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-gamepad', 'IconDataBrands(0xf11b)'); ''');
    await db.rawInsert(
        ''' INSERT INTO $tableMasterCategory (name, iconName) VALUES ('fa-gas-pump', 'IconDataBrands(0xf52f)'); ''');
  }
}
