import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

final String tableCategory = 'category_table';

@JsonSerializable()
class CategoryModel {
  int? id;
  String name, iconName;
  bool isDefault;
  bool isActive;
  DateTime? createdTime;
  DateTime? modifieldTime;

  CategoryModel({
    this.id,
    required this.name,
    required this.iconName,
    this.isDefault = false,
    this.isActive = true,
    this.createdTime,
    this.modifieldTime,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}


//pengeluaran
// Makanan Primer (Makanan rumah sehari-hari)
// Makanan Sekunder (Makan diluar rumah)
// Belanja Primer (Belanja kebutuhan bulanan wajib)
// Belanja Sekunder (Belanja yang sebetulnya dapat ditunda)
// Tabungan Investasi
// Tabungan Cadangan tak terduga
// Transportasi
// Donasi
// Entertainmen/Hiburan
// Rumah Tangga (Listrik, air, dll)
// Medis
// Telekomunikasi (Pulsa, internet)
// Pinjaman/Piutang
// Pendidikan
// Cicilan Barang
// Cicilan Pinjaman
// Lain-lain

// income
// salary
// award
// Grants
// sale 
// rental 
// refunds 
// coupons 
// dividends 
// others