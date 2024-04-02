import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:hive/hive.dart';
part 'transcation_model.g.dart';

@HiveType(typeId: 4)
class TransactionModel {
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String amount;
  @HiveField(4)
  final String catatype;
  @HiveField(5)
  final String date;
  @HiveField(6)
  final CatagoryType transcationType;
  @HiveField(7)
  final String paymentType;
  @HiveField(8)
  String? decs;

  TransactionModel(
      {required this.id,
      required this.amount,
      required this.catatype,
      required this.date,
      required this.transcationType,
      required this.paymentType,
      decs});
}
