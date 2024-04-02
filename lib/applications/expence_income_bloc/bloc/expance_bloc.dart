import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:exptracker/constants/icon_suggestions.dart';
import 'package:exptracker/db/catagory/catagory_db.dart';
import 'package:exptracker/db/transactions/transaction_db.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:exptracker/domains/transaction_model/transcation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expance_event.dart';
part 'expance_state.dart';
part 'expance_bloc.freezed.dart';

class ExpanceBloc extends Bloc<ExpanceEvent, ExpanceState> {
  ExpanceBloc() : super(ExpanceState.initial()) {
    String paytype = '';
    String date = '';
    String cataType = '';
    CatagoryType transcationType = CatagoryType.income;
    on<GetCataForTancastion>((event, emit) async {
      transcationType = event.cataType;
      log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>>>>>>>>" +
          event.cataType.toString());
      List<CatagoryModel> cataList = await CatagoryDB().getCatagory();
      if (event.cataType == CatagoryType.income) {
        List<CatagoryModel> incomeCata = [];
        await Future.forEach(cataList, (CatagoryModel cata) {
          if (cata.catagoryType == CatagoryType.income) {
            incomeCata.add(cata);
          }
        });
        emit(state.copyWith(
            isLoading: false,
            isError: false,
            drop: incomeCata,
            selectedCata: incomeCata[0].catagoryName.toString()));
      } else {
        List<CatagoryModel> expanceCata = [];
        await Future.forEach(cataList, (CatagoryModel cata) {
          if (cata.catagoryType == CatagoryType.expance) {
            expanceCata.add(cata);
          }
          log("?????????????????????????????????????????" +
              expanceCata[0].catagoryName.toString());
          emit(state.copyWith(
              isLoading: false,
              isError: false,
              drop: expanceCata,
              selectedCata: expanceCata[0].catagoryName.toString()));
        });
      }
    });
    on<DropCatagory>((event, emit) {
      cataType = event.selectedCata.toString();
      date = event.selecetedDate.toString();
      log('DropCatagory   >> date >>${event.selecetedDate.toString()} >> cata >>${event.selectedCata}');
      cataType = event.selectedCata.toString();
      date = event.selecetedDate.toString();
      emit(state.copyWith(
          selectedCata: event.selectedCata, selectedDate: event.selecetedDate));
    });
    on<PaymentTypes>((event, emit) {
      log('PaymentTypes   >> ${event.selectedPaymentType}');
      paytype = event.selectedPaymentType.toString();
      emit(state.copyWith(selectedPayType: event.selectedPaymentType));
    });
    on<AddTransaction>((event, emit) async {
      log('amt      >>>>> ${event.amt}');
      log('DEC      >>>>> ${event.Decs}');
      log('payType  >>>>> $paytype');
      log('date     >>>>> $date');
      log('Cata     >>>>> $cataType');
      log('transaction type     >>>>> ${transcationType.toString()}');
      TransactionModel transactionModel = TransactionModel(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          amount: event.amt,
          catatype: cataType,
          date: date,
          transcationType: transcationType,
          paymentType: paytype);
      await TransactionDB().insertTransaction(transactionModel);
    });

    on<GetTransactionList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));

      List<TransactionModel> transList = await TransactionDB().getTransaction();
      List<TransactionModel> expance = [];
      List<TransactionModel> income = [];
      int totalIncom = 0;
      int totalExp = 0;
      await Future.forEach(transList, (TransactionModel trans) {
        if (trans.transcationType == CatagoryType.income) {
          income.add(trans);
          totalIncom = totalIncom + int.parse(trans.amount);
        } else {
          expance.add(trans);
           totalExp = totalExp + int.parse(trans.amount);
        }
      });
      log(expance.toList().toString());
      emit(state.copyWith(totalExpence: totalExp.toString(),totalIncome: totalIncom.toString(),
          isLoading: false, isError: false, expance: expance, income: income,));
    });
  }
}
