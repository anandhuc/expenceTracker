import 'package:bloc/bloc.dart';
import 'package:exptracker/db/catagory/catagory_db.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trancastion_event.dart';
part 'trancastion_state.dart';
part 'trancastion_bloc.freezed.dart';

class TrancastionBloc extends Bloc<TrancastionEvent, TrancastionState> {
  TrancastionBloc() : super(TrancastionState.initial()) {
  
  }
}
