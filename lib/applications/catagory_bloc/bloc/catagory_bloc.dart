import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:exptracker/db/catagory/catagory_db.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catagory_event.dart';
part 'catagory_state.dart';
part 'catagory_bloc.freezed.dart';

class CatagoryBloc extends Bloc<CatagoryEvent, CatagoryState> {
  CatagoryBloc() : super(CatagoryState.initial()) {
    on<GetCataLIst>((event, emit) async {
      List<CatagoryModel> cataList = await CatagoryDB().getCatagory();
      List<CatagoryModel> expance = [];
      List<CatagoryModel> income = [];
      await Future.forEach(cataList, (CatagoryModel cata) {
        if (cata.catagoryType == CatagoryType.income) {
          income.add(cata);
        } else {
          expance.add(cata);
        }
      });
      emit(state.copyWith(
          isLoading: false, isError: false, expance: expance, income: income));
    });
    on<SelectCataType>((event, emit) async {
      log(event.selectedCataType.toString());
      emit(state.copyWith(selectedCataType: event.selectedCataType));
    });
    on<AddCataType>((event, emit) async {
      CatagoryModel catagoryModel = CatagoryModel(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          catagoryName: event.cataName,
          catagoryType: event.selectedCataType == 0
              ? CatagoryType.expance
              : CatagoryType.income);
              await CatagoryDB().insertCatagory(catagoryModel);
    });
  }
}
