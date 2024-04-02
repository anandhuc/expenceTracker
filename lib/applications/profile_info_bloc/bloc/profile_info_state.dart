part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoState with _$ProfileInfoState {
  factory ProfileInfoState({
    required bool isLoading,
    required bool isError,
    String? name,
    String? email,
    String? phone,
    String? loginId,
  }) = _ProfileInfoState;
  factory ProfileInfoState.initial() {
    return ProfileInfoState(
      isError: false,
      isLoading: false,
    );
  }
}
