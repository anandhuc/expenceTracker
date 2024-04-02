part of 'expance_bloc.dart';

@freezed
class ExpanceState with _$ExpanceState {
  factory ExpanceState(
      {required bool isLoading,
      required bool isError,
      required List<CatagoryModel> drop,
      required List<String> paymentType,
      required List<TransactionModel> expance,
      required List<TransactionModel> income,
      required String selectedPayType,
      required String selectedCata,
      required String totalIncome,
      required String totalExpence,
      DateTime? selectedDate}) = _ExpanceState;

  factory ExpanceState.initial() {
    return ExpanceState(
        isError: false,
        isLoading: false,
        expance: [],
        income: [],
        drop: [],
        totalExpence: '',
        totalIncome: '',
        selectedCata: '',
        paymentType: paymentMethod,
        selectedPayType: paymentMethod[0]);
  }
}
