// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfo value) userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfo value)? userInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfo value)? userInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoEventCopyWith<$Res> {
  factory $ProfileInfoEventCopyWith(
          ProfileInfoEvent value, $Res Function(ProfileInfoEvent) then) =
      _$ProfileInfoEventCopyWithImpl<$Res, ProfileInfoEvent>;
}

/// @nodoc
class _$ProfileInfoEventCopyWithImpl<$Res, $Val extends ProfileInfoEvent>
    implements $ProfileInfoEventCopyWith<$Res> {
  _$ProfileInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$ProfileInfoEventCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInfoImpl implements UserInfo {
  const _$UserInfoImpl();

  @override
  String toString() {
    return 'ProfileInfoEvent.userInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userInfo,
  }) {
    return userInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userInfo,
  }) {
    return userInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfo value) userInfo,
  }) {
    return userInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInfo value)? userInfo,
  }) {
    return userInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfo value)? userInfo,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(this);
    }
    return orElse();
  }
}

abstract class UserInfo implements ProfileInfoEvent {
  const factory UserInfo() = _$UserInfoImpl;
}

/// @nodoc
mixin _$ProfileInfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get loginId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInfoStateCopyWith<ProfileInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoStateCopyWith<$Res> {
  factory $ProfileInfoStateCopyWith(
          ProfileInfoState value, $Res Function(ProfileInfoState) then) =
      _$ProfileInfoStateCopyWithImpl<$Res, ProfileInfoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? name,
      String? email,
      String? phone,
      String? loginId});
}

/// @nodoc
class _$ProfileInfoStateCopyWithImpl<$Res, $Val extends ProfileInfoState>
    implements $ProfileInfoStateCopyWith<$Res> {
  _$ProfileInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? loginId = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInfoStateImplCopyWith<$Res>
    implements $ProfileInfoStateCopyWith<$Res> {
  factory _$$ProfileInfoStateImplCopyWith(_$ProfileInfoStateImpl value,
          $Res Function(_$ProfileInfoStateImpl) then) =
      __$$ProfileInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? name,
      String? email,
      String? phone,
      String? loginId});
}

/// @nodoc
class __$$ProfileInfoStateImplCopyWithImpl<$Res>
    extends _$ProfileInfoStateCopyWithImpl<$Res, _$ProfileInfoStateImpl>
    implements _$$ProfileInfoStateImplCopyWith<$Res> {
  __$$ProfileInfoStateImplCopyWithImpl(_$ProfileInfoStateImpl _value,
      $Res Function(_$ProfileInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? loginId = freezed,
  }) {
    return _then(_$ProfileInfoStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileInfoStateImpl implements _ProfileInfoState {
  _$ProfileInfoStateImpl(
      {required this.isLoading,
      required this.isError,
      this.name,
      this.email,
      this.phone,
      this.loginId});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? loginId;

  @override
  String toString() {
    return 'ProfileInfoState(isLoading: $isLoading, isError: $isError, name: $name, email: $email, phone: $phone, loginId: $loginId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.loginId, loginId) || other.loginId == loginId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, name, email, phone, loginId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoStateImplCopyWith<_$ProfileInfoStateImpl> get copyWith =>
      __$$ProfileInfoStateImplCopyWithImpl<_$ProfileInfoStateImpl>(
          this, _$identity);
}

abstract class _ProfileInfoState implements ProfileInfoState {
  factory _ProfileInfoState(
      {required final bool isLoading,
      required final bool isError,
      final String? name,
      final String? email,
      final String? phone,
      final String? loginId}) = _$ProfileInfoStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get loginId;
  @override
  @JsonKey(ignore: true)
  _$$ProfileInfoStateImplCopyWith<_$ProfileInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
