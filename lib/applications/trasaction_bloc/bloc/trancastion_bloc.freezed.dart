// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trancastion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrancastionEvent {
  CatagoryType get cataType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CatagoryType cataType) getcata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CatagoryType cataType)? getcata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CatagoryType cataType)? getcata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GGGGGetCataForTancastion value) getcata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GGGGGetCataForTancastion value)? getcata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GGGGGetCataForTancastion value)? getcata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrancastionEventCopyWith<TrancastionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrancastionEventCopyWith<$Res> {
  factory $TrancastionEventCopyWith(
          TrancastionEvent value, $Res Function(TrancastionEvent) then) =
      _$TrancastionEventCopyWithImpl<$Res, TrancastionEvent>;
  @useResult
  $Res call({CatagoryType cataType});
}

/// @nodoc
class _$TrancastionEventCopyWithImpl<$Res, $Val extends TrancastionEvent>
    implements $TrancastionEventCopyWith<$Res> {
  _$TrancastionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cataType = null,
  }) {
    return _then(_value.copyWith(
      cataType: null == cataType
          ? _value.cataType
          : cataType // ignore: cast_nullable_to_non_nullable
              as CatagoryType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GGGGGetCataForTancastionImplCopyWith<$Res>
    implements $TrancastionEventCopyWith<$Res> {
  factory _$$GGGGGetCataForTancastionImplCopyWith(
          _$GGGGGetCataForTancastionImpl value,
          $Res Function(_$GGGGGetCataForTancastionImpl) then) =
      __$$GGGGGetCataForTancastionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CatagoryType cataType});
}

/// @nodoc
class __$$GGGGGetCataForTancastionImplCopyWithImpl<$Res>
    extends _$TrancastionEventCopyWithImpl<$Res, _$GGGGGetCataForTancastionImpl>
    implements _$$GGGGGetCataForTancastionImplCopyWith<$Res> {
  __$$GGGGGetCataForTancastionImplCopyWithImpl(
      _$GGGGGetCataForTancastionImpl _value,
      $Res Function(_$GGGGGetCataForTancastionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cataType = null,
  }) {
    return _then(_$GGGGGetCataForTancastionImpl(
      cataType: null == cataType
          ? _value.cataType
          : cataType // ignore: cast_nullable_to_non_nullable
              as CatagoryType,
    ));
  }
}

/// @nodoc

class _$GGGGGetCataForTancastionImpl implements GGGGGetCataForTancastion {
  const _$GGGGGetCataForTancastionImpl({required this.cataType});

  @override
  final CatagoryType cataType;

  @override
  String toString() {
    return 'TrancastionEvent.getcata(cataType: $cataType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GGGGGetCataForTancastionImpl &&
            (identical(other.cataType, cataType) ||
                other.cataType == cataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cataType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GGGGGetCataForTancastionImplCopyWith<_$GGGGGetCataForTancastionImpl>
      get copyWith => __$$GGGGGetCataForTancastionImplCopyWithImpl<
          _$GGGGGetCataForTancastionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CatagoryType cataType) getcata,
  }) {
    return getcata(cataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CatagoryType cataType)? getcata,
  }) {
    return getcata?.call(cataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CatagoryType cataType)? getcata,
    required TResult orElse(),
  }) {
    if (getcata != null) {
      return getcata(cataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GGGGGetCataForTancastion value) getcata,
  }) {
    return getcata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GGGGGetCataForTancastion value)? getcata,
  }) {
    return getcata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GGGGGetCataForTancastion value)? getcata,
    required TResult orElse(),
  }) {
    if (getcata != null) {
      return getcata(this);
    }
    return orElse();
  }
}

abstract class GGGGGetCataForTancastion implements TrancastionEvent {
  const factory GGGGGetCataForTancastion(
      {required final CatagoryType cataType}) = _$GGGGGetCataForTancastionImpl;

  @override
  CatagoryType get cataType;
  @override
  @JsonKey(ignore: true)
  _$$GGGGGetCataForTancastionImplCopyWith<_$GGGGGetCataForTancastionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrancastionState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<CatagoryModel> get catagories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrancastionStateCopyWith<TrancastionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrancastionStateCopyWith<$Res> {
  factory $TrancastionStateCopyWith(
          TrancastionState value, $Res Function(TrancastionState) then) =
      _$TrancastionStateCopyWithImpl<$Res, TrancastionState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<CatagoryModel> catagories});
}

/// @nodoc
class _$TrancastionStateCopyWithImpl<$Res, $Val extends TrancastionState>
    implements $TrancastionStateCopyWith<$Res> {
  _$TrancastionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? catagories = null,
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
      catagories: null == catagories
          ? _value.catagories
          : catagories // ignore: cast_nullable_to_non_nullable
              as List<CatagoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrancastionStateImplCopyWith<$Res>
    implements $TrancastionStateCopyWith<$Res> {
  factory _$$TrancastionStateImplCopyWith(_$TrancastionStateImpl value,
          $Res Function(_$TrancastionStateImpl) then) =
      __$$TrancastionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<CatagoryModel> catagories});
}

/// @nodoc
class __$$TrancastionStateImplCopyWithImpl<$Res>
    extends _$TrancastionStateCopyWithImpl<$Res, _$TrancastionStateImpl>
    implements _$$TrancastionStateImplCopyWith<$Res> {
  __$$TrancastionStateImplCopyWithImpl(_$TrancastionStateImpl _value,
      $Res Function(_$TrancastionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? catagories = null,
  }) {
    return _then(_$TrancastionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      catagories: null == catagories
          ? _value._catagories
          : catagories // ignore: cast_nullable_to_non_nullable
              as List<CatagoryModel>,
    ));
  }
}

/// @nodoc

class _$TrancastionStateImpl implements _TrancastionState {
  _$TrancastionStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<CatagoryModel> catagories})
      : _catagories = catagories;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<CatagoryModel> _catagories;
  @override
  List<CatagoryModel> get catagories {
    if (_catagories is EqualUnmodifiableListView) return _catagories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catagories);
  }

  @override
  String toString() {
    return 'TrancastionState(isLoading: $isLoading, isError: $isError, catagories: $catagories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrancastionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._catagories, _catagories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_catagories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrancastionStateImplCopyWith<_$TrancastionStateImpl> get copyWith =>
      __$$TrancastionStateImplCopyWithImpl<_$TrancastionStateImpl>(
          this, _$identity);
}

abstract class _TrancastionState implements TrancastionState {
  factory _TrancastionState(
      {required final bool isLoading,
      required final bool isError,
      required final List<CatagoryModel> catagories}) = _$TrancastionStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<CatagoryModel> get catagories;
  @override
  @JsonKey(ignore: true)
  _$$TrancastionStateImplCopyWith<_$TrancastionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
