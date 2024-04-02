part of 'catagory_bloc.dart';

@freezed
class CatagoryState with _$CatagoryState {
 factory CatagoryState(
      {required bool isLoading,
      required bool isError,
      required int selectedCataType,
      required List<CatagoryModel> expance,
      required List<CatagoryModel> income,
     
      }) = _ExpanceState;

  factory CatagoryState.initial() {
    return CatagoryState(
        isError: false,
        isLoading: false,
        selectedCataType: 0,
        expance: [],
        income: []
       );
  }}