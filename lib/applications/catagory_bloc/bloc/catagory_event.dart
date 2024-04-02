part of 'catagory_bloc.dart';

@freezed
class CatagoryEvent with _$CatagoryEvent {
  const factory CatagoryEvent.getCatagoryListFromDb() = GetCataLIst;
  
  const factory CatagoryEvent.selectCatagoryType({required int selectedCataType}) = SelectCataType;
  const factory CatagoryEvent.addCatagoryType({required int selectedCataType,required String cataName}) = AddCataType;
}