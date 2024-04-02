import 'package:exptracker/core/db_names.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:hive/hive.dart';

abstract class CatagoryDbFunctions {
  Future<List<CatagoryModel>> getCatagory();
  Future<void> insertCatagory(CatagoryModel catagory);
}

class CatagoryDB implements CatagoryDbFunctions {
  @override
  Future<void> insertCatagory(CatagoryModel catagory) async {
    final catagoryDb = await Hive.openBox<CatagoryModel>(CATAGORY_BD_NAME);
    await catagoryDb.add(catagory);
  }

  @override
  Future<List<CatagoryModel>> getCatagory() async {
    final catagoryDb = await Hive.openBox<CatagoryModel>(CATAGORY_BD_NAME);
    return catagoryDb.values.toList();
  }
}