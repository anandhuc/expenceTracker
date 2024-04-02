import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'profile_info_event.dart';
part 'profile_info_state.dart';
part 'profile_info_bloc.freezed.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc() : super(ProfileInfoState.initial()) {
    on<UserInfo>((event, emit) async {
      var box = await Hive.openBox('personDataBox');
      emit(state.copyWith(
          email: box.get('email'),
          name: box.get('studentName'),
          phone: box.get('phone'),
          loginId: box.get('login_id')));
    });
  }
}
