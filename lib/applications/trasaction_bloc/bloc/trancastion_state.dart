part of 'trancastion_bloc.dart';

@freezed
class TrancastionState with _$TrancastionState {
 factory TrancastionState(
      {required bool isLoading,
      required bool isError,
      required List <CatagoryModel> catagories,
     
     
      }) = _TrancastionState;

  factory TrancastionState.initial() {
    return TrancastionState(
        isError: false,
        isLoading: false,
        catagories: []
       );
  }}