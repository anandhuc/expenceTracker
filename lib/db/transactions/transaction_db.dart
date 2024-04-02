import 'package:exptracker/core/db_names.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:exptracker/domains/transaction_model/transcation_model.dart';
import 'package:hive/hive.dart';

abstract class TransactionDbFunctions {
  Future<List<TransactionModel>> getTransaction();
  Future<void> insertTransaction(TransactionModel transactionModel);
}

class TransactionDB implements TransactionDbFunctions {
  @override
  Future<void> insertTransaction(TransactionModel catagory) async {
    final transactionDB = await Hive.openBox<TransactionModel>(TRANSACTION_BD_NAME);
    await transactionDB.add(catagory);
  }

  @override
  Future<List<TransactionModel>> getTransaction() async {
    final transactionDB = await Hive.openBox<TransactionModel>(TRANSACTION_BD_NAME);
    return transactionDB.values.toList();
  }
}