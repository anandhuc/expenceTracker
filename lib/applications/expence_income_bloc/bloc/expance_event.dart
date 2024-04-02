part of 'expance_bloc.dart';

@freezed
class ExpanceEvent with _$ExpanceEvent {
  const factory ExpanceEvent.dropcata({required String selectedCata, DateTime? selecetedDate,}) = DropCatagory;
    const factory ExpanceEvent.getcata({required CatagoryType cataType}) = GetCataForTancastion;
  const factory ExpanceEvent.payTypes({required String selectedPaymentType,}) = PaymentTypes;
  const factory ExpanceEvent.addTransaction({required String amt,String? Decs}) = AddTransaction;
  const factory ExpanceEvent.getCatagoryListFromDb() = GetTransactionList;
   const factory ExpanceEvent.intro() = InitialCatagory;
}