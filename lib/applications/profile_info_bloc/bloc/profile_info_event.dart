part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoEvent with _$ProfileInfoEvent {
  const factory ProfileInfoEvent.userInfo() = UserInfo;
}
