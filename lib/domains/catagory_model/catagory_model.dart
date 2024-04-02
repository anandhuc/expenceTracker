import 'package:hive/hive.dart';
part 'catagory_model.g.dart';

@HiveType(typeId: 3)
enum CatagoryType {
  @HiveField(0)
  income,
  @HiveField(1)
  expance
}

@HiveType(typeId: 2)
class CatagoryModel {
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String catagoryName;

  @HiveField(4)
  final CatagoryType catagoryType;

  CatagoryModel(
      {required this.id,
      required this.catagoryName,
      required this.catagoryType});
}
